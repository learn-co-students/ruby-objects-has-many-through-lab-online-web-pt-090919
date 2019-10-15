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
    
   def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
   end
    
    def appointments
      Appointment.all.select{|appointment| appointment.date == self}
    end
    
    def doctors
      appointments.map {|appoint| appoint.doctor}
    end
end