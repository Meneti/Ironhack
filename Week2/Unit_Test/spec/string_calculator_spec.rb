# spec/string_calculator_spec.rb

#    Go up one level, outside of spec/
                
require_relative("../lib/string_calculator.rb")

 RSpec.describe StringCalculator do
  describe "add method" do
      it "returns the addition of 2 numbers in a string" do
       # Setup
       the_calculator = StringCalculator.new
          #   p the_calculator.add("7,7")    ==    14
      expect( the_calculator.add("7,7") ).to eq( 14 )
          #   p the_calculator.add("8,4")    ==    12
      expect( the_calculator.add("8,4") ).to eq( 12 )
    	end
  	

	it "returns the addition of 4 numbers in a string" do
       # Setup
       the_calculator = StringCalculator.new
       #   p the_calculator.add("7,7,1,2")    ==    17
      expect( the_calculator.add("7,7,1,2") ).to eq( 17 )
		end
 
  it "returns the addition of 4 numbers and $ in a string" do
       # Setup
       the_calculator = StringCalculator.new
       #   p the_calculator.add("7$7$1$2")    ==    17
      expect( the_calculator.add("7$7$1$2") ).to eq( 17 )
  		end

    it "returns the addition of 4 numbers and $ and , in a string" do
       # Setup
       the_calculator = StringCalculator.new
         #  p the_calculator.add("7$7,1,2") == 17
      expect( the_calculator.add("7$7$1$2") ).to eq( 17 )
    	end
  
  end
  end

