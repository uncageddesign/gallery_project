require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
require_relative("../models/assign.rb")
require("pry-byebug")

Artist.delete_all()
Exhibit.delete_all()
Assign.delete_all()

artist1 = Artist.new({
  "name" => "Tamara de Lempicka",
  "bio" => "Tamara Lempicka was a Polish painter who spent her working life in France and the United States. She is best known for her polished Art Deco portraits of aristocrats and the wealthy, and for her highly stylized paintings of nudes.<br>
  Born in Warsaw, Lempicka briefly moved to Saint Petersburg where she married a prominent Polish lawyer, then travelled to Paris. She studied painting with Maurice Denis and André Lhote. Her style was a blend of late, refined cubism and the neoclassical style, particularly inspired by the work of Jean-Dominique Ingres.[2] She was an active participant in the artistic and social life of Paris between the Wars. In 1928 she became the mistress of Baron Raoul Kuffner, a wealthy art collector from the former Austro-Hungarian Empire. After the death of his wife in 1933, the Baron married Lempicka in 1934, and thereafter she became known in the press as 'The Baroness with a Brush'.<br>
  Following the outbreak of World War II in 1939, she and her husband moved to the United States and she painted celebrity portraits, as well as still lifes and, in the 1960s, some abstract paintings. Her work was out of fashion after World War II, but made a comeback in the late 1960s, with the rediscovery of Art Deco. She moved to Mexico in 1974, where she died in 1980. At her request, her ashes were scattered over the Popocatépetl volcano.",
  "photo" => "/images/lempicka_artist.jpg",
  "birth" => "16 May 1898",
  "death" =>  "18 March 1980",
  "nationality" => "Polish"
  })
artist1.save()

artist2 = Artist.new({
  "name" => "Rene Lalique",
  "bio" => "Lalique was best known for his creations in glass art. In the 1920s, he became noted for his work in the Art Deco style. He was responsible for the walls of lighted glass and elegant coloured glass columns which filled the dining room and 'grand salon' of the SS Normandie and the interior fittings, cross, screens, reredos and font of St. Matthew's Churchat Millbrook in Jersey (Lalique's 'Glass Church'). His earlier experiences in Ay were his defining influence in his later work. As a result, many of his jewellery pieces and vases showcase plants, flowers and flowing lines. <br>
Both unique and commercial works of René Lalique are in the collections of a large number of public museums around the world including the Museu Calouste Gulbenkian in Lisbon, the Lalique museum of Hakone in Japan, the Musée Lalique and the Musée des Arts Décoratifs in France, the Schmuckmuseum Pforzheim in Germany, the Victoria and Albert Museum in London, the Metropolitan Museum and the Corning Museum in New York State, and the Rijksmuseum in Amsterdam.",
  "photo" => "/images/Rene-jules-lalique_artist.jpg",
  "birth" => "6 April 1860",
  "death" =>  "1 May 1945",
  "nationality" => "French"
  })
artist2.save()

artist3 = Artist.new({
  "name" => "John Bellany",
  "bio" => "Bellany was born in Port Seton. His father and grandfather were fishermen in Port Seton and Eyemouth near Edinburgh.
During the early 1960s, he studied at Edinburgh College of Art, here he met with other young Scottish artists to begin lifelong friendships and share ideals for a renaissance in Scottish arts. His contemporaries included Alan Bold and Alexander Moffat. Bellany and Moffat studied under Robin Philipson. Their initial interest was in impressionism but with their common Scottish ancestry they looked toward Alan Davie as a connection to a greater but more accessible artistic world.
After his studies at Edinburgh, Bellany achieved a major travelling scholarship and traveled around Europe discovering how the traditions of the great northern European masters could be connected to his own Scottish experience. After this he would marry Helen Percy and move to attend the Royal College of Art in London.
In 1967 he was invited to a trip to East Germany. In Dresden he viewed Otto Dix's War Triptych.
",
  "photo" => "/images/john_bellany_artist.jpg",
  "birth" => "18 June 1942",
  "death" =>  "28 August 2013",
  "nationality" => "Scottish"
  })
artist3.save()

artist4 = Artist.new({
  "name" => "Peter Howson",
  "bio" => "His work has encompassed a number of themes. His early works are typified by very masculine working class men, most famously in The Heroic Dosser (1987). Later he was commissioned by the Imperial War Museum of London, to be the official war artist for the Bosnian/Hercegovina under Serbian and Croatian aggression in 1993. Here he produced some of his most shocking and controversial work detailing the atrocities which were taking place at the time, like Plum Grove (1994). One painting in particular, Croatian and Muslim, detailing a rape created controversy partly because of its explicit subject matter but also because Howson had painted it from the victims' accounts. He was the official war painter at the Kosovo War for the London Times.",
  "photo" => "/images/peter_howsen_artist.jpg",
  "birth" => "27 March 1958",
  "nationality" => "Scottish"
  })
artist4.save()

exhibit1 = Exhibit.new({
  "name" => "The Roaring Twenties",
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
