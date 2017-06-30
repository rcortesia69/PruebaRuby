puts "Bienvenido al programa RC"
puts "\n"
puts "Por favor escoga una de las siguientes opciones: "
puts "1.-Mostrar el nombre de los alumnos registrados y el promedio de cada uno."
puts "2.-Mostrar la cantidad de inasistencia en total."
puts "3.-Mostrar el nombre de los alumnos aprobados."
puts "4.-Terminar programa."
puts "\n"
print "Ingrese el numero de su opcion aqui: "
opp = gets.chomp.to_i
puts "\n"
file = File.open('informacion.csv', 'r')
data = file.readlines
file.close

def promedio(nota)
  file = File.open('informacion.csv', 'r')
  data = file.readlines
  file.close
  promedio = 0
  data.each do |e|
    suma = e.split(', ').map(&:chomp)
    promedio = suma[1..5].map(&:to_f).sum / suma[1..5].count
    puts "#{suma[0]} paso con #{promedio}" if promedio > nota
  end
end

while opp != 4 do
  # ######################################
  # #OPCION 1
  # ######################################
  if opp == 1
    data.each do |e|
      suma = e.split(', ').map(&:chomp)
      promedio = suma[1..5].map(&:to_f).sum / suma[1..5].count
      puts "#{suma[0]} tiene un promedio de:  #{promedio}"
      puts "\n"
    end
    puts "\n"
    print "Quisiera realizar otra accion en el programa?: "
    op2 = gets.chomp.to_s
    puts "\n"
    if op2 == 'si'
      puts "Por favor escoga una de las siguientes opciones: "
      puts "\n"
      puts "1.-Mostrar el nombre de los alumnos registrados"
      puts "2.-Mostrar la cantidad de inasistencia en total"
      puts "3.-Mostrar el nombre de los alumnos aprobados"
      puts "4.-Terminar programa"
      puts "\n"
      print "Ingrese el numero de su opcion aqui: "
      opp = gets.chomp.to_i
      puts "\n"
    elsif op2 == 'no'
      puts "\n"
      puts "Gracias por usar el programa RC"
      break
    end
    # ######################################
    # #OPCION 2
    # ######################################
  elsif opp == 2
    data.each do |e|
      value = e.split(', ').map(&:chomp)
      puts "#{value[0]} tuvo #{value.count('A')} inasistencias"
      puts "\n"
    end
    print "Quisiera realizar otra accion en el programa?: "
    op2 = gets.chomp.to_s
    puts "\n"
    if op2 == 'si'
      puts "Por favor escoga una de las siguientes opciones: "
      puts "1.-Mostrar el nombre de los alumnos registrados"
      puts "2.-Mostrar la cantidad de inasistencia en total"
      puts "3.-Mostrar el nombre de los alumnos aprobados"
      puts "4.-Terminar programa"
      puts "\n"
      print "Ingrese el numero de su opcion aqui: "
      opp = gets.chomp.to_i
      puts "\n"
    elsif op2 == 'no'
      puts "\n"
      puts "Gracias por usar el programa RC"
      break
    end
    # ######################################
    # #OPCION 3
    # ######################################
  elsif opp == 3
    print "Ingrese la nota para poder aprobar la materia: "
    nota = gets.chomp.to_i
    puts "\n"
    promedio(nota)
    puts "\n"
    print "Quisiera realizar otra accion en el programa?: "
    op2 = gets.chomp.to_s
    puts "\n"
    if op2 == 'si'
      puts "\n"
      puts "Por favor escoga una de las siguientes opciones: "
      puts "\n"
      puts "1.-Mostrar el nombre de los alumnos registrados"
      puts "2.-Mostrar la cantidad de inasistencia en total"
      puts "3.-Mostrar el nombre de los alumnos aprobados"
      puts "4.-Terminar programa"
      puts "\n"
      print "Ingrese el numero de su opcion aqui: "
      opp = gets.chomp.to_i
      puts "\n"
    elsif op2 == 'no'
      puts "\n"
      puts "Gracias por usar el programa RC"
      break
    end
    # ######################################
    # #OPCION 4
    # ######################################
  else
    puts "Opcion invalida, ingrese una opcion correcta"
    puts "\n"
    puts "Por favor escoga una de las siguientes opciones: "
    puts "\n"
    puts "1.-Mostrar el nombre de los alumnos registrados"
    puts "2.-Mostrar la cantidad de inasistencia en total"
    puts "3.-Mostrar el nombre de los alumnos aprobados"
    puts "4.-Terminar programa"
    puts "\n"
    print "Ingrese el numero de su opcion aqui: "
    opp = gets.chomp.to_i
    puts "\n"
  end
end
puts "GRACIAS POR USAR EL PROGRAMA RC"
puts "\n"
