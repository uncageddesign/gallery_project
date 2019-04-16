require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/exhibit.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/assign.rb' )
also_reload( '../models/*' )

get '/visit' do
  @assign = Assign.all()
  erb(:"visit/index")
end

post '/visit/search/' do
  @exhibit = Exhibit.all()
  erb(:"visit/show")
end
