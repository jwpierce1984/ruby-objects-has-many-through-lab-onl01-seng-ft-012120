class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize (date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment (doctor, date)
    self.new(date, self, doctor)
  end
  
end