require_relative '../config/environment.rb'

aritst_1 = Artist.new('artist_1', 6)
aritst_2 = Artist.new('artist_2', 20)

gallery_1 = Gallery.new('gallery_1', 'city_1')
gallery_2 = Gallery.new('gallery_2', 'city_2')

painting_1 = Painting.new('painting_1', 10, aritst_1, gallery_1)
painting_2 = Painting.new('painting_2', 10, aritst_1, gallery_2)
painting_3 = Painting.new('painting_3', 10, aritst_2, gallery_1)
painting_4 = Painting.new('painting_3', 10, aritst_1, gallery_1)

binding.pry
