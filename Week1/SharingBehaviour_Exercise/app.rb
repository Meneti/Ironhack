
require_relative ("lib/CaffeineMethod.rb")
require_relative ("lib/PaymentMethod.rb")
require_relative ("lib/Programmer.rb")
require_relative("lib/Designer.rb")

prog1= Programmer.new("Ana")
prog2 = Programmer.new("John")

desig1= Designer.new("Sofie")
desig2 = Designer.new("Peter")

puts "This is a list of Programmers"
prog1.print
prog2.print

puts "This is a list of Designers"
desig1.print
desig2.print

puts "This is a list of who got paid"
prog1.gets_paid
desig2.gets_paid

puts "This is a list of who drinks caffeine"
prog1.drinks_caffeine
desig1.drinks_caffeine


