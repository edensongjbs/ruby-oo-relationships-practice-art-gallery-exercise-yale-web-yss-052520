class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.artist==self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end

  def prolificness
    paintings.length.to_f/years_experience.to_f
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all
  end

  def self.total_experience
    @@all.reduce(0){|total, artist| total+artist.years_experience}
  end

  def self.most_prolific
    @@all.max{|artist1, artist2|artist1.prolificness <=> artist2.prolificness}
  end

end
