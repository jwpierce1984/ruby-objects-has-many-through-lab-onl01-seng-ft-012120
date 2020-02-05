class Artist
  attr_accessor :name, :song, :genre
  
  @@all = []
  
  def initialize (name)
    @name = name
    @song = song
    @genre - genre
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def new_song(name, genre)
    song.new(name, self, genre)
  end
  
end