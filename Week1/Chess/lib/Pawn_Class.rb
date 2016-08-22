class Pawn
	include Vertical
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color
	end
	def can_move?(x,y)
		change_in_x = (x - @x).abs 
		change_in_y = (y - @y).abs 
		if (@color == "white" && @y ==2 && vertical_move(x,y) == "yes" && change_in_y ==2)|| (@color == "white" && @y >2 && vertical_move(x,y) == "yes" && change_in_y ==1)|| (@color == "black" && @y ==7 && vertical_move(x,y) == "yes" && change_in_y ==2)|| (@color == "white" && @y >7 && vertical_move(x,y) == "yes" && change_in_y ==1)
			output = "yes"
		else
		output = "no"
		end
		output
	end
end

