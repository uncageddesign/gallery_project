require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/exhibit.rb' )
also_reload( '../models/*' )

get '/exhibits' do
  @exhibits = Exhibit.all()
  erb(:"exhibits/index")
end

get '/exhibits/:id' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb( :"exhibits/show" )
end
