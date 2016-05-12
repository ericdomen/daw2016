#Eric Domenzain Morales

class Tesoro

	def initialize(nombre = nil, descripcion = nil)
		@nombre = nombre
		@descripcion = descripcion
	end
	
	def get_nombre()
		return @nombre
	end
	
	def set_nombre(nombre)
		@nombre = nombre
	end
	
	def get_descripcion()
		return @descripcion
	end
	
	def set_descripcion(descripcion)
		@descripcion = descripcion
	end
	
	def to_s #sobreescribimos el metodo por defecto to_s
		puts "El tesoro se llama #{get_nombre} es #{get_descripcion} \n"
	end
end

mi_tesoro = Tesoro.new
#mi_tesoro.set_nombre("Perdido")
#mi_tesoro.set_descripcion("muy valioso")
print mi_tesoro.to_s

otro_tesoro = Tesoro.new("Esperanza", "Otro dato")
print otro_tesoro.to_s

#Metodo inspect que permite mostrar lo que hay en el objeto
puts "Inspeccionando el tesoro #{mi_tesoro.inspect}"

#Metodo abreviado de inspect con impresion incluida
p(otro_tesoro)