#Autor: Eric Domenzain Morales
class Vehiculo
	
	def initialize(dueno = nil, puertas = nil, ruedas = nil)
		@dueno = dueno
		@puertas = puertas
		@ruedas = ruedas
	end
	
	def caracteristicas
		return "Las caracteristicas del vehiculo son..."
	end
	
	def dueno
		return @dueno
	end
	
	def dueno=(dueno)
		dueno = @dueno
	end
	
	def puertas
		return @puertas
	end
	
	def puerta=(puertas)
		puertas = @puertas
	end
	
	def ruedas
		return @ruedas
	end
	
	def ruedas=(ruedas)
		ruedas = @ruedas
	end
end

class Automovil < Vehiculo
	
	def initialize(dueno = nil, puertas = nil, ruedas = nil, descapotable = nil)
		super(dueno, puertas, ruedas)
		@descapotable = descapotable
	end
	
	def subir
		puts "Subiendo al automovil"
	end
	
	def bajar
		puts "bajando del automovil"
	end
	
	def descapotable=(descapotable)
		@descapotable = descapotable
	end
	
	def descapotable
		return @descapotable
	end
end

class Camioneta < Vehiculo
	
	def initialize(dueno = nil, puertas = nil, ruedas = nil, tara = nil, carga = 0)
		super(dueno, puertas, ruedas)
		@tara = tara
		@carga = carga
	end
	
	def cargar(kilos)
		@carga += kilos
	end
	
	def tara=(tara)
		@tara = tara
	end
	
	def tara
		return @tara
	end
	
	def carga=(carga)
		@carga = carga
	end
	
	def carga
		return @carga
	end
end

mi_auto = Automovil.new("Eric Domenzain", 4, 5, false)
p(mi_auto)

mi_camioneta = Camioneta.new("Jesus Mata", 4, 4, 1000, 0)
mi_camioneta.cargar(12)
puts "\n\nLa camioneta tiene una carga de #{mi_camioneta.carga} Kg."
mi_camioneta.cargar(12)
puts "\n\nLa camioneta tiene una carga de #{mi_camioneta.carga} Kg."
mi_camioneta.tara = 300
puts "La tara de mi camioneta es #{mi_camioneta.tara}"


