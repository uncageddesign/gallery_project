require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
require_relative("../models/assign.rb")
require("pry-byebug")

Artist.delete_all()
Exhibit.delete_all()
Assign.delete_all()

artist1 = Artist.new({
  "name" => "Tamara de Lempicka",
  "bio" => "https://en.wikipedia.org/wiki/Tamara_de_Lempicka",
  "photo" => "/images/lempicka_artist.jpg",
  "birth" => "16 May 1898",
  "death" =>  "18 March 1980",
  "nationality" => "Polish"
  })
artist1.save()

artist2 = Artist.new({
  "name" => "Rene Lalique",
  "bio" => "https://en.wikipedia.org/wiki/Ren%C3%A9_Lalique",
  "photo" => "/images/Rene-jules-lalique_artist.jpg",
  "birth" => "6 April 1860",
  "death" =>  "1 May 1945",
  "nationality" => "French"
  })
artist2.save()

artist3 = Artist.new({
  "name" => "John Bellany",
  "bio" => "https://en.wikipedia.org/wiki/John_Bellany",
  "photo" => "/images/john_bellany_artist.jpg",
  "birth" => "18 June 1942",
  "death" =>  "28 August 2013",
  "nationality" => "Scottish"
  })
artist3.save()

artist4 = Artist.new({
  "name" => "Peter Howson",
  "bio" => "https://en.wikipedia.org/wiki/Peter_Howson",
  "photo" => "/images/peter_howsen_artist.jpg",
  "birth" => "27 March 1958",
  "nationality" => "Scottish"
  })
artist4.save()

exhibit1 = Exhibit.new({
  "name" => "Roaring 20s",
  "blurb" => "Roaring 20s info",
  "photo" => "/images/lempicka_painting2.jpg",
  "room" => "1",
  "run_start" => "1 April 2019",
  "run_end" => "25 August 2019",
  "visitor_type" => "General",
  "category" => "Art Deco"
  })
exhibit1.save()

exhibit2 = Exhibit.new({
  "name" => "Modern Scotland",
  "blurb" => "Scottish artist from the last 100 years",
  "photo" => "/images/john-bellany-boat-builders.jpg",
  "room" => "2",
  "run_start" => "10 December 2018",
  "run_end" => "27 May 2019",
  "visitor_type" => "General",
  "category" => "Contempory Art"
  })
exhibit2.save()

exhibit3 = Exhibit.new({
  "name" => "What Makes an Artist",
  "blurb" => "Investigating what it takes to be an artist",
  "photo" => "/images/makes-artist.jpg",
  "room" => "3",
  "run_start" => "16 April 2019",
  "run_end" => "24 June 2019",
  "visitor_type" => "Student",
  "category" => "Educational"
  })
exhibit3.save()

exhibit4 = Exhibit.new({
  "name" => "Study of a Human",
  "blurb" => "A close look at the human body through the eye of the artist.",
  "photo" => "/images/human-study.jpg",
  "room" => "4",
  "run_start" => "9 July 2019",
  "run_end" => "30 September 2019",
  "visitor_type" => "Adult",
  "category" => "Sculpture"
  })
exhibit4.save()

assign1 = Assign.new({
  "exhibit_id" => exhibit1.id,
  "artist_id" => artist1.id
  })
assign1.save()

assign2 = Assign.new({
  "exhibit_id" => exhibit1.id,
  "artist_id" => artist2.id
  })
assign2.save()

assign3 = Assign.new({
  "exhibit_id" => exhibit2.id,
  "artist_id" => artist3.id
  })
assign3.save()

assign4 = Assign.new({
  "exhibit_id" => exhibit2.id,
  "artist_id" => artist4.id
  })
assign4.save()

# binding.pry
# nil
