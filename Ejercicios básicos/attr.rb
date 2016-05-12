#Eric Domenzain Morales

class Cosa
	attr_reader :descripcion
	attr_writer :descripcion
	
	def initialize(descripcion)
		@descripcion = descripcion
	end
end

tu_cosa = Cosa.new("Prueba de GET and SET")
p(tu_cosa)
tu_cosa.descripcion = "Modificacion de la descripcion"
puts "Descripcion #{tu_cosa.descripcion}"

#se concatenan dos String
tu_cosa.descripcion << ", concatenacion"
puts "Descripcion #{tu_cosa.descripcion}"