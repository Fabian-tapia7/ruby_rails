class PersonaTipo2

  def nacer
    @edad = 0
  end

  def envejecer
    @edad +=1
  end

  def mostrar_edad
    puts @edad
  end
end

p1 = PersonaTipo2.new
p1.nacer
25.times do
  p1.envejecer
end
p1.mostrar_edad
