#Autor: Eric Domenzain Morales
class Object
	
	def initialize(position_x = nil, position_y = nil, weight = nil)
		@position_x = position_x
		@position_y = position_y
		@weight = weight
	end
	#GET AND SET
	attr_accessor :position_x, :position_y, :weight
end

class Weapon < Object
	
	def initialize(position_x = nil, position_y = nil, weight = nil, damage = nil, success = nil, failure = nil)
		super(position_x, position_y, weight)
		@damage = damage
		@success = success
		@failure = failure
	end
	attr_accessor :damage, :success, :failure
end

class Agent < Object
	
	def initialize(position_x = nil, position_y = nil, weight = nil, health = nil, stregth = nil, name = nil, current_weapon)
		super(position_x, position_y, weight)
		@health = health
		@stregth = stregth
		@name = name
		@current_weapon = current_weapon
	end
	
	attr_accessor :health, :stregth, :name, :current_weapon
end

class Enemy < Agent
	
	def initialize(health = nil, stregth = nil, name = nil, current_weapon = nil, strategy = nil, position_x = nil, position_y = nil, weight = nil)
		super(health, stregth, name, current_weapon)
		@strategy = strategy
	end
	
	attr_accessor :strategy
end

class Player < Agent
	
	def initialize(health = nil, stregth = nil, name = nil, current_weapon = nil, id = nil, position_x = nil, position_y = nil, weight = nil)
		super(health, stregth, name, current_weapon)
		@id = id
	end
	
	attr_accessor :id
end