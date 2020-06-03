require_relative '../config/environment.rb'

gall1=Gallery.new("Bespoke", "NYC")
gall2=Gallery.new("Betwixt", "NYC")
gall3=Gallery.new("Sharp", "Quechee")
artist1=Artist.new("James", 37)
artist2=Artist.new("Jeanne", 36)
artist3=Artist.new("Ada", 3)
artist4=Artist.new("Soren", 1)
artist5=Artist.new("Nika", 36)
artist1.create_painting("a", 150, gall1)
Painting.new("b", 200, artist1, gall1)
Painting.new("c", 300, artist1, gall2)
Painting.new("d", 15000, artist1, gall1)
Painting.new("e", 200, artist2, gall1)
Painting.new("f", 20, artist2, gall3)
Painting.new("g", 2000, artist3, gall1)
Painting.new("h", 2005, artist3, gall2)
Painting.new("i", 1, artist5, gall1)




binding.pry

puts "Bob Ross rules."
