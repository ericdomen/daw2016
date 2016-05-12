#Autor: Eric Domenzain Morales
class Animal

	def initialize(nombre, tipo)
		@miNombre = nombre
		@miTipo = tipo
	end

	def setTipo(tipo)
		@miTipo = tipo
	end
	
	def getTipo()
		return @miTipo
	end
	
	def setNombre(nombre)
		@miNombre = nombre
	end
	
	def getNombre()
		return @miNombre
	end
	
	def hacerSonido
		puts "Hace sonido"
	end
end

miAnimal = Animal.new("Firulais","Perro")
puts "El nombre del animal es: #{miAnimal.getNombre}"
puts "Ingresa el nombre del animal: "
miAnimal.setNombre(gets.chomp)
puts "\nEl nombre del animal es: #{miAnimal.getNombre}"
puts "El tipo es: #{miAnimal.getTipo}"