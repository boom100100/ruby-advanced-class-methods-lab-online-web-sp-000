class Song
  attr_accessor :name, :artist_name
  @@all = []



  def self.create(name, artist)
    self.new
    :name = name
    :artist_name = artist
    save
    self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
