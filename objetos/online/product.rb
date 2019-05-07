class Product
  attr_reader :red
  def initialize(name, blue, red, green)
    @name = name
    @blue = blue.to_i
    @red = red.to_i
    @green = green.to_i
  end

  def stock_total
    @blue + @green + @red
  end
end

products = []
file = File.open('products.txt', 'r')
data = file.readlines
file.close
data.each do |line|
  name, blue, red, green = line.split(', ')
  products << Product.new(name, blue, red, green)
end

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
