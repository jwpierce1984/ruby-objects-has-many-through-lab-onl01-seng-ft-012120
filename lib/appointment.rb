class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize (date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

  
end