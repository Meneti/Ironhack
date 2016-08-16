 class Car
 	def initialize (name, sound)
 		@name = name
 		@sound = sound
 	end

 	def car_noise
 	puts "The #{@name} is now taking off:#{@sound}"
 	end
 	def self.star_trek_opening
	puts " Space...the final frontier..."
	end

	def self.star_wars_openinng
	puts "A long tome ago in a far..."
	end
 end

 new_car = Car.new("Ferrari", "broom")
 new2_car = Car.new("Porsche", "Broooom")
 
new_car.car_noise
new2_car.car_noise

# Class method


Car.star_wars_openinng