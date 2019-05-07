class Student
  attr_reader :name
  def initialize(name, *notas)
    @name = name
    @notas = notas.map(&:to_i)
  end

  def average
    @notas.inject(&:+) / @notas.size.to_f
  end
end

file = File.open('notas.txt', 'r')
data = file.readlines
file.close

students = []

data.each do |line|
  ls = line.split(', ')

  #name = ls[0]
  #students = ls[1..ls.size]
  #students << Student.new(name, notas)

  students << Student.new(*ls)
end

#students.each do |student|
#  puts student.name
#  puts student.average
#end

averages = students.map(&:average)
print averages.inject(:+) / averages.size


#para mostrar el producto
#print products
=begin
Para obtener el stock de cada producto en color rojo
products.each do |product|
  puts product.red
end
=end

=begin
Mostar el total de stock rojo
print products.inject(0) {|sum, product| sum + product.red}
=end


=begin
Mostrar el stock total de un producto
=end


=begin
Mostrar el stock total de todos los productos
puts products.inject(0) {|sum, product| sum + product.stock_total}
=end
