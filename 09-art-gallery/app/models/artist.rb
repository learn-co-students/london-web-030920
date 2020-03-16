class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end


  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }.uniq
  end

  def create_painting(name, price, gallery)
    Painting.new(name, price, self, gallery)
  end

  def how_prolific
    self.paintings.size / @years_experience.to_f
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map {|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.how_prolific}
  end

end
