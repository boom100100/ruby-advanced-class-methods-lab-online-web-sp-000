class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist)
  end
  
  def self.create(name, artist)
    self.initialize(name, artist)
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
