require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/category.rb' )
also_reload( '../models/*' )

get '/visit' do
  @categories = Category.all()
  erb(:"visit/index")
end
