class Gallery

  attr_reader :name, :city, :artist, :gallery

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.gallery==self}
  end

  def artists
    paintings.map{|painting| painting.artist}.uniq
  end

  def artist_names
    artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    paintings.max{|painting1, painting2| painting1.price <=> painting2.price}
  end

  def self.all
    @@all
  end

end
