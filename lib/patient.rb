class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end





end
