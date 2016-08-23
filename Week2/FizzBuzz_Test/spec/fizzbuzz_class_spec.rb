

require_relative("../lib/fizzbuzz_class.rb")

RSpec.describe FizzBuzz do
  describe "add method" do
      it "p same number if number is not a multiple of 3 or 5" do
       # Setup
       the_fizzbuzzer = FizzBuzz.new
       # p the_fizz_buzzer.fizz_buzz(7) #=> "7"
      expect( the_fizzbuzzer.fizzbuzz(7) ).to eq(7)
    end
    it "p Fizz if number is a multiple of 3" do
       # Setup
       the_fizzbuzzer = FizzBuzz.new
       # p the_fizz_buzzer.fizz_buzz(9) #=> "Fizz"
      expect( the_fizzbuzzer.fizzbuzz(9) ).to eq("Fizz")
    end
    it "p Buzz if number is a multiple of 5" do
       # Setup
       the_fizzbuzzer = FizzBuzz.new
       # p the_fizz_buzzer.fizz_buzz(10) #=> "Buzz"
      expect( the_fizzbuzzer.fizzbuzz(10) ).to eq("Buzz")
    end
    it "p FizzBuzz if number is a multiple of 15" do
       # Setup
       the_fizzbuzzer = FizzBuzz.new
       # p the_fizz_buzzer.fizz_buzz(15) #=> "FizzBuzz"
      expect( the_fizzbuzzer.fizzbuzz(15) ).to eq("FizzBuzz")
    end
end
end

