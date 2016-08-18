class Programmer
	include Caffeine
	include Payment
	def initialize (name)
		@name = name
	end
	def print
		puts "#{@name}"
	end
end
	
