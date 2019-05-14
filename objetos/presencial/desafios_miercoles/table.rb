class Table
  attr_reader :table, :income1, :income2, :income3, :income4
  def initialize(table, income1, income2, income3, income4)
    @table = table
    @income1 = income1.to_i
    @income2 = income2.to_i
    @income3 = income3.to_i
    @income4 = income4.to_i
  end


  #def average
  #  puts (@income1 + @income2 + @income3 + @income4)
  #end

end

def ins_objeto(base)
  mesas = []
  data =[]

  File.open('casino.txt', 'r') { |file| data = file.readlines}
  data.each do |lin|
    mesas.push(Table.new(lin.split(',')[0], lin.split(',')[1], lin.split(',')[2], lin.split(',')[3], lin.split(',')[4]))
  end
  return mesas
end

objeto = ins_objeto('casino.txt')


objeto.each do |ing|

  array_mesa_x = [ing.income1,ing.income2,ing.income3,ing.income4]

  indice_mesa_x = array_mesa_x.index(array_mesa_x.max)+1
  puts ing.table
  puts array_mesa_x.max
  puts indice_mesa_x

end

objeto.each do |ing|
  array_mesa_x = [ing.income1,ing.income2,ing.income3,ing.income4]
  

#objeto.average
