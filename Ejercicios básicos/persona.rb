#Autor: Eric Domenzain Morales
class Persona

	def initialize(nombre, edad, genero)
		@miNombre = nombre
		@miEdad = edad
		@miGenero = genero
	end
	
	def setNombre(nombre)
		@miNombre = nombre
	end
	
	def getNombre()
		return @miNombre
	end
	
	def setEdad(edad)
		@miEdad = edad
	end
	
	def getEdad()
		return @miEdad
	end
	
	def setGenero(genero)
		@miGenero = genero
	end
	
	def getGenero()
		return @miGenero
	end
	
	def imprimirDatos
		puts "\nEl nombre de la persona es: #{getNombre}"
		puts "La edad de la persona es: #{getEdad}"
		puts "El genero de la persona es: #{getGenero}"
	end
end

miPersona = Persona.new("Eric", 22, "Masculino")
puts "El nombre anterior de la persona es: #{miPersona.getNombre}"
puts "\n\nIngresa el nombre de la persona: "
miPersona.setNombre(gets.chomp)
puts "\n\nIngresa la edad de la persona: "
miPersona.setEdad(gets.chomp.to_i)
puts "\n\nIngresa el genero de la persona: "
miPersona.setGenero(gets.chomp)
miPersona.imprimirDatos