class Doctor
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  # Takes in a an instance of the `Patient` class and a date, and 
  # creates a new `Appointment`
  # That `Appointment` should know that it belongs to the doctor
  def new_appointment(patient,date)
    Appointment.new(date, patient, self)
  end
  
  # Returns all appointments associated with this Doctor
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  # Has many patients, through appointments
  def patients
    appointments.map {|appointment| appointment.patient }
  end
end