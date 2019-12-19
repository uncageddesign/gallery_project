require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry')
require_relative( '../models/exhibit.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/assign.rb' )
also_reload( '../models/*' )

get '/visit' do
  @assign = Assign.all()
  @exhibits = @assign.map {|obj| obj.exhibit }
  @categories = @exhibits.uniq { |obj| obj.category}
  erb(:"visit/index")
end

get '/visit/search/artist/' do
  @search = Assign.search_exhibits(params['artist_id'])
  erb(:"visit/show_artist")
end

get '/visit/search/category' do
  # params['exhibit_id']
  @exhibit = Exhibit.all()
  erb(:"visit/show_exhibit")
end
