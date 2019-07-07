class Song

  attr_accessor :name, :artist_name
  @@all = []

  #CALL AN INSTANCE METHOD W/IN CLASS METHOD
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
    instance
  end

  def self.create_by_name(input_name)
    #@name = input_name
    instance = self.new
    instance.name = input_name
    instance.save
    instance
  end

  def self.find_by_name(input_name)
    if @@all.include?(input_name)
      return input_name
    else
      return false
    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
