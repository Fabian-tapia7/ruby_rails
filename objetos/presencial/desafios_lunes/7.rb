class Product
  attr_accessor :name, :sizes
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_i)
  end
  def catalog
    #que muestre la informacion que queremos mostrar en un string:
    return "#{self.name}, #{self.sizes[0..self.sizes.size-2].join(', ') }"
  end
end
products_list = []
data = []
data_output =[]

File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
  data_output.push(product.catalog)
end


File.write('output.txt', data_output.join("\n"))
