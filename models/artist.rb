require_relative( '../db/sql_runner' )
require('pry-byebug')
class Artist

  attr_accessor( :id, :name, :image_url, :bio )

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @image_url = options['image_url']
    @bio = options['bio']
  end

  def save()
    sql = "INSERT INTO artists (
      name, image_url, bio
    ) VALUES (
      '#{ @name }', '#{@image_url}', '#{@bio}'
    ) RETURNING *"
    artist_data = SqlRunner.run(sql)
    @id = artist_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run( sql )
    result = artists.map { |artist| Artist.new( artist ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM artists WHERE id=#{id}"
    artist = SqlRunner.run( sql )
    result = Artist.new( artist.first )
    return result
  end


  def self.update( options )
    sql = "UPDATE artists SET
      name='#{ options['name'] }', image_url='#{@image_url}', bio='#{@bio}'
      WHERE id='#{ options['id'] }'"
    SqlRunner.run( sql )
  end

  def self.destroy( id )
    sql = "DELETE FROM artists WHERE id=#{ id }"
    SqlRunner.run( sql )
  end

end
