
module Test
  def result
    if ((@nota1+@nota2)/2) > 4
      puts "Estudiante aprobado"
    else
      puts "Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
    self.get_quantity
    #que muestre la cantidad de estudiantes creados
  end
end

class Student
  include Test
  extend Attendance
  @@quantity = 0 ##@@ para que sea variable de clase
  def initialize(nombre, nota1=4, nota2=4)
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
  def self.get_quantity
    @@quantity
  end
end
huga = []
10.times do |e|
  huga.push(Student.new('hugo', 6, 10))
end

#estan aprobados?
huga.each do |e|
  e.result
end

##muestro el total de alumnos creados
puts Student.get_quantity
