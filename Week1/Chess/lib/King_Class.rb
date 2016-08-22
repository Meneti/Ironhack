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
		change_in_x = (x - @x).abs 
		change_in_y = (y - @y).abs 
		if (horizontal_move(x,y) == "yes" && change_in_x ==1) || (vertical_move(x,y) == "yes" && change_in_y ==1)  || (diagonal_move(x,y) == "yes"  && change_in_y==1 && change_in_x==1)
		output = "yes" 
		else
		output = "no"
		end
		output
	end
end

