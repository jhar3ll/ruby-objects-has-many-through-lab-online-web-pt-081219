class Doctor
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 

  def appointments
    Appointment.all.select {|appointment| appointment.doctor = self}
  end 
  
   def patients
    appointments.map do |appointment|
      appointment.patient 
    end 
  end 
  
  def self.all 
    @@all 
  end 
    
end 
  