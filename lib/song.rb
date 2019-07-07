class Song

  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    @name = ""
    @artist_name = ""
    save
  end

  def self.create
    self.new
  end

  def self.new_by_name(input_name)
    @name = input_name
    self.new
    

  end

  def name
    @name
  end



  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
