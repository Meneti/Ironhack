class Knight
	include Horizontal
	include Vertical
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color

	end
	def can_move?(x,y)
		change_in_x = (x - @x).abs 
		change_in_y = (y - @y).abs 
		if (change_in_x == 2 && change_in_y == 1) || (change_in_x == 1 && change_in_y == 2)
		output = "yes"
		else
		output = "no"
		end
		output
	end
end

