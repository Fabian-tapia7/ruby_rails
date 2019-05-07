class Product
  attr_reader :name, :precio
  def initialize(name, *precio)
    @name = name
    @precio = precio.map(&:to_i)
  end
  def nuevo_catalogo
    @data_output = products_list.map { |product| "#{product.name} #{product.precio}"}
  end
end
products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0],ls[1],ls[2],ls[3])
end


File.write('output', data_output.join(', '))
