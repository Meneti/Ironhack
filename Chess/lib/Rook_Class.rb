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
		if horizontal_move(x,y,7) == "yes" || vertical_move(x,y,7) == "yes" 
		output = "yes"
		else
		output = "no"
		end
		output
	end
end