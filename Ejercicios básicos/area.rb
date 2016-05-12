#Autor: Eric Domenzain Morales
def area(base, altura)
	area = (base * altura)/2
	puts "El area es: #{area}"
	
	puts "\n\n\n\tTeclea enter para continuar"
	gets.chomp
	system('cls')
end
puts "Teclea la base: "
base = gets.chomp.to_f

puts "Teclea la altura: "
altura = gets.chomp.to_f
area(base, altura)