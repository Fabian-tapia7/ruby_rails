propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_accessor :nombre
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
  end
  def ladrar
    puts "#{@nombre} está ladrando"
  end

end
dog = Dog.new(propiedades)

dog.ladrar
