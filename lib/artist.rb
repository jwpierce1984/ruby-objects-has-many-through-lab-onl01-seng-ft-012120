class Artist
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize (name)
    @name = name
    @song = song
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def songs
    self.all.select {|s| s.artist == self}
  end
  
  
end