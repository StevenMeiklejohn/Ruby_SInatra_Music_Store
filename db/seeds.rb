require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require('pry-byebug')



artist1 = Artist.new({
  'name' => 'Pearl Jam',
  'image_url' => 'http://www.tvovermind.com/wp-content/uploads/2017/07/pearljam-crop.jpg',
  'bio' => 'Pearl Jam is an American rock band formed in Seattle, Washington, in 1990. Since its inception, the bands line-up has consisted of Eddie Vedder (lead vocals), Mike McCready (lead guitar), Stone Gossard (rhythm guitar) and Jeff Ament (bass). The bands fifth member is drummer Matt Cameron (also of Soundgarden), who has been with the band since 1998. Boom Gaspar (piano) has also been a session/touring member with the band since 2002. Drummers Dave Krusen, Matt Chamberlain, Dave Abbruzzese and Jack Irons are former members of the band.
Formed after the demise of Gossard and Aments previous band, Mother Love Bone, Pearl Jam broke into the mainstream with its debut album, Ten, in 1991. One of the key bands in the grunge movement of the early 1990s, over the course of the bands career, its members became noted for their refusal to adhere to traditional music industry practices, including refusing to make proper music videos or give interviews, and engaging in a much-publicized boycott of Ticketmaster. In 2006, Rolling Stone described the band as having spent much of the past decade deliberately tearing apart their own fame.
To date, the band has sold nearly 32 million records in the United States[2] and an estimated 60 million worldwide.[3][4] Pearl Jam has outlasted and outsold many of its contemporaries from the alternative rock breakthrough of the early 1990s, and is considered one of the most influential bands of that decade.[5] Stephen Thomas Erlewine of AllMusic referred to Pearl Jam as "the most popular American rock & roll band of the 90s. Pearl Jam were inducted into the Rock and Roll Hall of Fame on April 7, 2017, in their first year of eligibility'
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
  'image_url' => 'http://margotandthenuclearsoandsos.com/merch/print3.jpg',
  'bio' => 'Margot & the Nuclear So and Sos is a band from Indianapolis, Indiana. Their style was described as "cinematic chamber pop" that "both the casual music fan and music perfectionist will enjoy" by MacKenzie Wilson in a review of their album The Dust of Retreat.[1] As they have evolved over their eleven-year history, their sound has changed significantly, moving from the orchestral sound that defined their original existence to a guitar rock that characterized their middle albums to a much softer sound today'
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
