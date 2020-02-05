class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize (name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|a| a.name == self}
  end
  
end