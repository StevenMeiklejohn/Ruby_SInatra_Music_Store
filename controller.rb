require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'json' )
require_relative( './models/artist' )
require_relative( './models/album' )



#homepage
get '/welcome' do
  erb( :welcome )
end


#all artists
get '/artists' do
  @artists = Artist.all()
  erb( :artists )
end
#
# #show specific deal
# get '/welcome/offer_index/:id' do
#   @offer = Offer.find(params[:id])
#   @restaurant = Offer.restaurant_name(params[:id])
#   erb( :show_offer )
# end
#
#
# #show specific deal menu image large.
# get '/welcome/offer_index/:id/menu' do
#   @offer = Offer.find(params[:id])
#   erb( :menu_large )
# end
#
# #show all restaurants.
# get '/welcome/restaurant_index' do
#   @restaurants = Eatery.all()
#   erb( :restaurant_index )
# end
