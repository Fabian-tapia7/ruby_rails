=begin
class Lego
end
legos = []
10.times do
  legos << Lego.new
end

print legos
=end

class Persona
  def bautizar(nuevo_nombre)
    @nombre=nuevo_nombre
  end
  def saludar()
    puts "#{@nombre} dice Hola!"
  end
end

p1 = Persona.new
p1.bautizar("Fablitz")
p1.saludar
