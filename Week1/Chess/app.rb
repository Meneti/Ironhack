# App
require_relative("lib/Method_Horizontal.rb")
require_relative("lib/Method_Vertical.rb")
# require_relative("lib/Method_Diagonal.rb")
# require_relative("lib/Bishop_Class.rb")
# require_relative("lib/King_Class.rb")
require_relative("lib/Pawn_Class.rb")
# require_relative("lib/Queen_Class.rb")
# require_relative("lib/Rook_Class.rb")
# require_relative("lib/Knight_Class.rb")

# Add pieces
# black_rook_left = Rook.new(1, 8, "black")
# white_rook_right = Rook.new(8, 1, "white")
# black_king = King.new(8, 4, "black")
# white_king = King.new(4, 1, "white")
# black_queen = Queen.new(5, 8, "black")
# white_queen = Queen.new(5, 1, "white")
# black_knight_left = Knight.new(2, 8, "black")
# white_knight_right = Knight.new(7, 1, "white")
# black_pawn_left = Pawn.new(1, 7, "black")
white_pawn_right = Pawn.new(7, 2, "white")
# black_bishop_left = Bishop.new(3, 8, "black")
# white_bishop_right = Bishop.new(1, 6, "white")



puts "Valid moves"
# p white_bishop_right.can_move?(3,8) == 'yes'
# p white_king.can_move?(4,5) == "yes"
# p white_rook_right.can_move?(8,8) == "yes"
# p white_queen.can_move?(8,4) == "yes"
# p white_knight_right.can_move?(6,3) == "yes"
p white_pawn_right.can_move?(7,3) == "yes"



