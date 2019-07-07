class Song

  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    #@name = ""
    #@artist_name = ""
    save
  end

  #def self.class_method
       #a = A.new
       #a.instance_method
    #end

  def self.create
    instance = self.new
    instance.save
    instance
  end

  def self.new_by_name(input_name)
    #@name = input_name
    instance = self.new
    instance.name = input_name


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
