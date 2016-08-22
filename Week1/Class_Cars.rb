 class Car
 	def initialize (name, sound)
 		@name = name
 		@sound = sound
 		@cities_array = [] 
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
	def travel_to (cities_name)
	 @cities_array.push (cities_name)
	 puts "The #{@name} visited :#{@cities_array}"
	end
 end

class Motorcycle < Cars
	def activate_camouflage
		@motorcycle = true
	end
	def travel_to (cities_name)
	
end
 new_car = Car.new("Ferrari", "broom")
 new2_car = Car.new("Porsche", "Broooom")

 
new_car.car_noise
new2_car.car_noise
new_car.travel_to("Miami, Boston")
new2_car.travel_to("NY, Dallas")

puts ""
puts ""
puts "Motorcycle"
new_motorcycle = Motorcyle.new("Yamaha")



# Class method

Car.star_wars_openinng

