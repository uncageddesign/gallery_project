require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist.rb' )
also_reload( '../models/*' )

get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end 
