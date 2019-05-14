class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@instances = 0 #variable contador de clases
  def self.instanciador
    @@instances
  end
  def initialize(model, year)
    super
    @@instances += 1
  end
  def engine_start
    super
      print "El motor se ha encendido!"
  end
end

10.times do |e|
  Car.new('modelx','añox')
end

puts Car.instanciador
