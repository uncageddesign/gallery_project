require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/exhibit.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/assign.rb' )
also_reload( '../models/*' )

get '/staff' do
  @assign = Assign.all()
  @exhibits = @assign.map {|obj| obj.exhibit }
  @categories = @exhibits.uniq { |obj| obj.category}
  erb(:"staff/index")
end

post '/staff/new' do
  @assign = Assign.new(params)
  @assign.save
  redirect to (:"/staff")
end

get '/staff/artists/' do
  @artists = Artist.all()
  erb( :"staff/artist" )
end

get '/staff/exhibits/' do
  @exhibits = Exhibit.all()
  erb( :"staff/exhibit" )
end

## Artist
get '/staff/artist/new' do
  erb (:"staff/artist_new")
end

post '/staff/artist/new' do
  @artist = Artist.new(params)
  @artist.save
  redirect to("/staff/artists/")
end

post '/staff/artist/:id/delete' do
  Artist.delete(params[:id])
  redirect to("/staff/artists/")
end

get '/staff/artist/:id/update' do
  @artist = Artist.find(params[:id])
  erb( :"staff/artist_edit")
end

post '/staff/artist/:id/update' do
  @artist = Artist.new(params)
  @artist.update
  redirect to (:"/staff")
end

## Exhibit
get '/staff/exhibit/new' do
  erb (:"staff/exhibit_new")
end

post '/staff/exhibit/new' do
  @exhibit = Exhibit.new(params)
  @exhibit.save
  redirect to("/staff")
end

post '/staff/exhibit/:id/delete' do
  Exhibit.delete(params[:id])
  redirect to("/staff/exhibits/")
end

get '/staff/exhibit/:id/update' do
  @exhibit = Exhibit.find(params[:id])
  erb( :"staff/exhibit_edit")
end

post '/staff/exhibit/:id/update' do
  @exhibit = Exhibit.new(params)
  @exhibit.update
  redirect to (:"/staff")
end
