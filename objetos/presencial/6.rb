class Product
  attr_reader :name, :precio
  def initialize(name, *precio)
    @name = name
    @precio = precio.map(&:to_i)
  end
  def average
      @precio.inject(&:+) / @precio.size.to_f
  end
end
products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

puts products_list.map { |product| "#{product.name}, #{product.average}"}
