#Autor: Eric Domenzain Morales
require 'pry'

def tip(amount)
	percent = 0.05
	
	percent = 0.10 if amount > 100
	binding.pry
	amount * percent
end

puts tip(80)
