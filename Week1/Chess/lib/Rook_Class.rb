#Rook_Class

class Rook
	include Horizontal
	include Vertical
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color

	end
	def can_move?(x,y)
		if horizontal_move(x,y) == "yes" || vertical_move(x,y) == "yes" 
		output = "yes"
		else
		output = "no"
		end
		output
	end
end