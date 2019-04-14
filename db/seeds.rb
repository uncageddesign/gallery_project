require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
require_relative("../models/category.rb")
require("pry-byebug")

Artist.delete_all()
Exhibit.delete_all()
Category.delete_all()

artist1 = Artist.new({
  "name" => "Tamara de Lempicka",
  "bio" => "https://en.wikipedia.org/wiki/Tamara_de_Lempicka",
  "photo" => "url",
  "birth" => "16 May 1898",
  "death" =>  "18 March 1980",
  "nationality" => "Polish"
  })
artist1.save()

artist2 = Artist.new({
  "name" => "Rene Lalique",
  "bio" => "https://en.wikipedia.org/wiki/Ren%C3%A9_Lalique",
  "photo" => "url",
  "birth" => "6 April 1860",
  "death" =>  "1 May 1945",
  "nationality" => "French"
  })
artist2.save()

artist3 = Artist.new({
  "name" => "John Bellany",
  "bio" => "https://en.wikipedia.org/wiki/John_Bellany",
  "photo" => "https://www.heraldscotland.com/resources/images/5280857/?type=responsive-gallery-fullscreen",
  "birth" => "18 June 1942",
  "death" =>  "28 August 2013",
  "nationality" => "Scottish"
  })
artist3.save()

artist4 = Artist.new({
  "name" => "Peter Howson",
  "bio" => "https://en.wikipedia.org/wiki/Peter_Howson",
  "photo" => "https://i.dailymail.co.uk/i/pix/2017/02/19/00/3D65911600000578-0-image-a-20_1487464528754.jpg",
  "birth" => "27 March 1958",
  "nationality" => "Scottish"
  })
artist4.save()

exhibit1 = Exhibit.new({
  "name" => "Roaring 20s",
  "blurb" => "Roaring 20s info",
  "photo" => "url",
  "room" => "1",
  "run_start" => "1 April 2019",
  "run_end" => "25 August 2019",
  "visitor_type" => "General"
  })
exhibit1.save()

exhibit2 = Exhibit.new({
  "name" => "Modern Scotland",
  "blurb" => "Scottish artist from the last 100 years",
  "photo" => "url",
  "room" => "2",
  "run_start" => "10 December 2018",
  "run_end" => "27 May 2019",
  "visitor_type" => "General"
  })
exhibit2.save()

exhibit3 = Exhibit.new({
  "name" => "What Makes an Artist",
  "blurb" => "Investigating what it takes to be an artist",
  "photo" => "url",
  "room" => "3",
  "run_start" => "16 April 2019",
  "run_end" => "24 June 2019",
  "visitor_type" => "Educational"
  })
exhibit3.save()

exhibit4 = Exhibit.new({
  "name" => "Study of a Human",
  "blurb" => "A close look at the human body through the eye of the artist.",
  "photo" => "url",
  "room" => "4",
  "run_start" => "9 July 2019",
  "run_end" => "30 September 2019",
  "visitor_type" => "Adult"
  })
exhibit4.save()

category1 = Category.new({
  "name" => "Art Deco",
  "artist_id" => "1",
  "exhibit_id" => "1"
  })
category1.save()

category2 = Category.new({
  "name" => "Art Deco",
  "artist_id" => "2",
  "exhibit_id" => "1"
  })
category2.save()

category3 = Category.new({
  "name" => "Contempory Art",
  "artist_id" => "3",
  "exhibit_id" => "2"
  })
category3.save()

category4 = Category.new({
  "name" => "Contempory Art",
  "artist_id" => "4",
  "exhibit_id" => "2"
  })
category4.save()

binding.pry
nil
