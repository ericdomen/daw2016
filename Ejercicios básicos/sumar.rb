#Autor: Eric Domenzain Morales
def suma(num1, num2)
	suma = num1 + num2
	puts "El resultado es: #{suma}"
	
	puts "\n\n\n\tTeclea enter para continuar"
	gets.chomp
	system('cls')
end
puts "Teclea el numero 1: "
numero1 = gets.chomp.to_f

puts "Teclea el numero 2: "
numero2 = gets.chomp.to_f
suma(numero1, numero2)