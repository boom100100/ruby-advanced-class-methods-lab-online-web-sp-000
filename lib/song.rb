class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    
    save
  end

  def self.create
    self.new

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
