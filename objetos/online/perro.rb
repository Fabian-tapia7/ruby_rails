class PersonaTipo2
    attr_accesor :edad
  def initialize(edad=5)
    @edad = edad
  end
  =begin
  ##primero eliminamos esto (A) para establecer algo por defecto o modificable
  def nacer
    @edad = 0
  end
  =end
  def envejecer
    @edad +=1
  end
  ##segundo eliminamos esto (A) para utilizar attr_accesor para mostrar edad
  =begin
  def mostrar_edad
    puts @edad
  end
  =end
end

p1 = PersonaTipo2.new(21)
##ahora para usar el attr_accesor:
p1.edad = 31 ## se usa para modificar la variable desde afuera
puts p1.edad


=begin
##primero eliminamos esto (A)
p1.nacer
=end

=begin
##segundo eliminamos esto (A) para utilizar attr_accesor para mostrar edad
25.times do
  p1.envejecer
end
=end

=begin
##segundo eliminamos esto (A) para utilizar attr_accesor para mostrar edad
p1.mostrar_edad #46
=end
