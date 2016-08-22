#Method_Horizontal

module Horizontal
	def horizontal_move (x_final, y_final,range)
		if @x!=x_final && @y==y_final 
		"yes"
		elsif @range != nil && @range=range
		"yes"
		else 
		"no"
		end
	end
end
