$num_max_to_guess = 1000
$num_to_try = 10
$num_tryed = 1

def selecc_num x
  return rand(x)+1
end
	
$num_to_guess = selecc_num $num_max_to_guess

puts "Adivina el numero que estoy pensando entre 0 y #{$num_max_to_guess}"
puts "Tienes #{$num_to_try} oportunidades"

def play
  while $num_to_try > 0
    print "Escribe tu intento numero #{$num_tryed} --> "
    a = gets.to_i
    if a > $num_to_guess
      print "¡#{a} Es muy alto! "
    elsif a == $num_to_guess
      print "Acertaste en #{$num_tryed} oportunidades "
      break
    else
      print "#{a} Es muy bajo "
    end
    $num_to_try -=1
    $num_tryed += 1
  end
  puts "El numero era #{$num_to_guess} tal como adivinaste." if a == $num_to_guess
  puts " "
  puts "El numero era #{$num_to_guess}. Mejor suerte para la pròxima vez" if a != $num_to_guess 
  puts "Fin del juego"

end
    
play
    

