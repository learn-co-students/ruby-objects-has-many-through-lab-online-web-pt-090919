class Patient
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  # Given a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  # Returns all appointments associated with this Patient
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end
  
  def doctors
    appointments.map {|appointment| appointment.doctor }
  end
  
end