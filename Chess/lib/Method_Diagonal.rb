#Method_Diagonal

module Diagonal
	def diagonal_move (x_final, y_final,range)
		if ((x_final-@x)-(y_final-@y))==0
		"yes"
		elsif @range != nil && @range=range
		"yes"
		else 
		"no"
		end
	end
end

