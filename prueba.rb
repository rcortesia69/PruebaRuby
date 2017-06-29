file = File.open('informacion.csv', 'r')
data = file.readlines
file.close

promedio = 0
  data.each do |e|
    suma = e.split(', ').map(&:chomp)
      promedio = suma[1..5].map(&:to_f).sum / suma[1..5].count
      puts "#{suma[0]} paso con #{promedio}" if promedio >= 5
      end
