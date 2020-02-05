class Song
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize (name)
    @name = name
    @genre = genre
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end