#Autor: Eric Domenzain Morales
def saludar(nombre)
	puts "Hola #{nombre}".center(80, ' ')
	puts "\n\n\n\tTeclea enter para continuar"
	gets.chomp
	system('cls')
end
puts "Teclea tu nombre: "
nombre = gets.chomp
saludar(nombre)