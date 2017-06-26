puts "Bienvenido al programa RC"
puts "Por favor escoga una de las siguientes opciones: "
puts "1.-Mostrar el nombre de los alumnos registrados"
puts "2.-Mostrar la cantidad de inasistencia en total"
puts "3.-Mostrar el nombre de los alumnos aprobados"
puts "4.-Terminar programa"
puts "\n"
print "Ingrese el numero de su opcion aqui: "
opp = gets.chomp.to_i
file = File.open('informacion.csv', 'r')
data = file.readlines
file.close

def promedio(nota)
suma = 0
  data.each do |e|
    suma += e.split(', ')[1..5].map(&:chomp)
    puts suma
  end
  if suma / 5 >= 5
    puts "#{e.split(', ')[0]} Paso la materia, congrats"
  end
end


while opp != 4 do
  # ######################################
  # #OPCION 1
  # ######################################
  if opp == 1
    data.each do |e|
      value = e.split(', ').map(&:chomp)
      puts value[0]
    end
    puts "\n"
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
    end
    print "Quisiera realizar otra accion en el programa?: "
    op2 = gets.chomp.to_s
    if op2 == 'si'
      puts "Por favor escoga una de las siguientes opciones: "
      puts "1.-Mostrar el nombre de los alumnos registrados"
      puts "2.-Mostrar la cantidad de inasistencia en total"
      puts "3.-Mostrar el nombre de los alumnos aprobados"
      puts "4.-Terminar programa"
      puts "\n"
      print "Ingrese el numero de su opcion aqui: "
      opp = gets.chomp.to_i
    end
    # ######################################
    # #OPCION 3
    # ######################################
  elsif opp == 3
    print "Ingrese la nota para poder pasar: "
    nota = gets.chomp.to_i
    puts promedio(nota)
    # ######################################
    # #OPCION 4
    # ######################################
  elsif opp == 4
    puts "Gracias por usar el programa RC"
    break
  end
end
