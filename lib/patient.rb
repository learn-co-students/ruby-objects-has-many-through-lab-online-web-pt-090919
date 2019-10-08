class Patient
  
  attr_reader :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |checkup| checkup.patient == self }
  end
  
  def doctors
    self.appointments.map { |checkup| checkup.doctor }
  end
  
end