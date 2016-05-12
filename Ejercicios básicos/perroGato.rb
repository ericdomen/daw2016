#Eric Domenzain Morales

#Perro
class Perro

	def initialize(nombre = nil)
		@nombre = nombre
	end
	
	def get_nombre()
		return @nombre
	end
	
	def set_nombre(nombre)
		@nombre = nombre
	end
	
	def ladrar()
		"Guau"
	end
	
	def to_s #sobreescribimos el metodo por defecto to_s
		puts "El Perro se llama #{get_nombre} y el ladra #{ladrar} \n"
	end
end

#Gato
class Gato

	def initialize(nombre = nil)
		@nombre = nombre
	end
	
	def get_nombre()
		return @nombre
	end
	
	def set_nombre(nombre)
		@nombre = nombre
	end
	
	def maullar()
		"Miau"
	end
	
	def to_s #sobreescribimos el metodo por defecto to_s
		puts "El gato se llama #{get_nombre} y el maulla #{maullar} \n"
	end
end

mi_perro = Perro.new("Fido")
mi_gato = Gato.new("Mata")
mi_perro.to_s
mi_gato.to_s