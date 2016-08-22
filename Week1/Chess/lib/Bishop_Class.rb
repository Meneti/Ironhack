class Bishop
	include Diagonal
	def initialize (x,y,color)
		@x=x
		@y=y
		@color=color
	end
	def can_move?(x,y)
			if diagonal_move(x,y,7) == "yes" 
			output = "yes"
			else 
			output = "no"
			end
			output
	end
end