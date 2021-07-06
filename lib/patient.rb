class Patient
  
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end.uniq
  end
  
end