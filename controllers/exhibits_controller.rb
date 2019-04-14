require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/exhibit.rb' )
also_reload( '../models/*' )

get '/exhibits' do
  @exhibits = Exhibit.all()
  erb(:"exhibits/index")
end
