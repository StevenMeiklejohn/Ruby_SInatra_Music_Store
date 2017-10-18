require_relative( '../db/sql_runner' )
require_relative( './artist' )
require('pry-byebug')
class Album

  attr_accessor( :id, :image_url, :title, :genre, :format, :price,  :artist_id )

  def initialize( options )
    @id = options['id'].to_i
    @title = options['title']
    @image_url = options['image_url']
    @genre = options['genre']
    @format = options['format']
    @price = options['price']
    @artist_id = options['artist_id']
  end



  def save()
    sql = "INSERT INTO albums (
      title, image_url, genre, format, price, artist_id
    ) VALUES (
      '#{ @title }', '#{@image_url}', '#{@genre}', '#{@format}',  '#{@price}', '#{@artist_id}'
    ) RETURNING *"
    album_data = SqlRunner.run(sql)
    @id = album_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums"
    albums = SqlRunner.run( sql )
    result = albums.map { |album| Album.new( album ) }
    return result
  end

  def self.albums_by_artist( id )
    sql = "SELECT * FROM albums WHERE artist_id=#{id}"
    albums = SqlRunner.run( sql )
    result = albums.map { |album| Album.new( album ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM albums WHERE id=#{id}"
    album = SqlRunner.run( sql )
    result = Album.new( album.first )
    return result
  end


  def self.artist_name( id )
    sql = "SELECT name FROM artists a INNER JOIN albums o ON o.artist_id = a.id WHERE o.id=#{id};"
    artist = SqlRunner.run( sql )
    result = Artist.new(artist.first)
    # binding.pry
    return result
  end

  def artist
    sql = "SELECT * FROM artists WHERE id = #{ @artist_id }"
    artist = SqlRunner.run( sql )[0]
    return Artist.new( artist )
  end

  def self.update( options )
    sql = "UPDATE albums SET
      title='#{ options['title'] }', image_url='#{@image_url}', genre='#{@genre}', format='#{@format}',  price='#{@price}', artist_id='#{@artist_id}'
      WHERE id='#{ options['id'] }'"
    SqlRunner.run( sql )
  end

  def self.destroy( id )
    sql = "DELETE FROM albums WHERE id=#{ id }"
    SqlRunner.run( sql )
  end

end
