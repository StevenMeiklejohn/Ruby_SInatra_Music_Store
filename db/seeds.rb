require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require('pry-byebug')



artist1 = Artist.new({
  'name' => 'Pearl Jam',
  'image_url' => 'http://www.tvovermind.com/wp-content/uploads/2017/07/pearljam-crop.jpg'
})
artist1.save


album1 = Album.new({
  'title' => 'Vitalogy',
  'image_url' => 'https://upload.wikimedia.org/wikipedia/en/3/30/PearlJamVitalogy.jpg',
  'genre' => 'Alternative',
  'format' => 'CD',
  'price' => 10,
  'artist_id' => artist1.id
  })
album1.save

album2 = Album.new({
  'title' => 'Vs',
  'image_url' => 'https://upload.wikimedia.org/wikipedia/en/f/f9/PearlJam-Vs.jpg',
  'genre' => 'Alternative',
  'format' => 'CD',
  'price' => 10,
  'artist_id' => artist1.id
  })
album2.save



artist2 = Artist.new({
  'name' => 'Margot and the Nuclear So and Sos',
  'image_url' => 'http://margotandthenuclearsoandsos.com/merch/print3.jpg'
  })
  artist2.save


album3 = Album.new({
  'title' => 'Buzzard',
  'image_url' => 'https://images-na.ssl-images-amazon.com/images/I/81PcGUXQmSL._SL1500_.jpg',
  'genre' => 'Indie',
  'format' => 'CD',
  'price' => 12,
  'artist_id' => artist2.id
  })
album3.save

  # binding.pry
#
album4 = Album.new({
  'title' => 'Rot Gut Domestic',
  'image_url' => 'https://f4.bcbits.com/img/a0328989417_10.jpg',
  'genre' => 'Indie',
  'format' => 'CD',
  'price' => 12,
  'artist_id' => artist2.id
  })
album4.save
