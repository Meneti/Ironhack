class Pawn
	include Vertical
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color
	end
	def can_move?(x,y)
		if vertical_move(x,y,1) == "yes" 
		else
		output = "no"
		end
		output
	end
end

