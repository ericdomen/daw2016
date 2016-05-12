#Autor: Eric Domenzain Morales
class Vehiculo
	
	def initialize(dueno = nil, puertas = nil, ruedas = nil)
		@dueno = dueno
		@puertas = puertas
		@ruedas = ruedas
	end
	#GET AND SET
	#attr_accessor :atributo1, :atributo2
	
	attr_reader :dueno
	attr_writer :dueno
	
	attr_reader :puertas
	attr_writer :puertas
	
	attr_reader :ruedas
	attr_writer :ruedas
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
	
	attr_reader :descapotable
	attr_writer :descapotable
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
	
	attr_reader :tara
	attr_writer :tara
	
	attr_reader :carga
	attr_writer :carga
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


