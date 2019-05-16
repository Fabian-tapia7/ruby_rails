module Formula
  def perimetro
    print "Perimetro del cuadrado es #{@ancho*2+@largo*2}" if @lado== nil
    print "Perimetro del cuadrado es #{@lado*4}" if @largo== nil
    puts
  end
  def area
    print "Area del rectangulo es #{@ancho * @largo}" if @lado== nil
    print "Area del cuadrado es #{@lado**2}" if @largo== nil
    puts
  end
end
class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    print "Largo #{@largo.to_s}, Ancho #{@ancho.to_s}"
  end
end
class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  def lados
    print "lado #{@lado.to_s}"
  end
end

Rectangulo.new(2,3).perimetro
Rectangulo.new(2,3).area
Cuadrado.new(2).perimetro
Cuadrado.new(2).area
