class King
	include Horizontal
	include Vertical
	include Diagonal
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color

	end
	def can_move?(x,y)

		if horizontal_move(x,y,1) == "yes" || vertical_move(x,y,1) == "yes" || diagonal_move(x,y,1) == "yes" 
		output = "yes" 
		else
		output = "no"
		end
		output
	end
end

