class Knight
	include Horizontal
	include Vertical
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color

	end
	def can_move?(x,y)
		if (horizontal_move(x,y,1) == "yes" && vertical_move(x,y,2)) == "yes" 
			# || (horizontal_move(x,y,2) == "yes" && vertical_move(x,y,1)) == "yes"
		output = "yes"
		else
		output = "no"
		end
		output
	end
end

