class Appointment
  attr_accessor :date, :patient, :doctor 
  @@all = []
  
  def initialize(name)
    @name = name 
   @@all << self 
 end 
 end 