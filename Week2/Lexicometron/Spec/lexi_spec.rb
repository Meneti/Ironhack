require_relative("../lib/lexi.rb")

RSpec.describe Lexiconomitron do 

	before :each do 
		@lexi = Lexiconomitron.new
	end


		  describe "eat_t" do

		    it "removes every letter t from the input" do

		      expect(@lexi.eat_t("great scoTT!")).to eq("grea sco!")

		    end
		end

		   describe "shazam" do
		   
		   	it "reverses the letters within the words" do

		     expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])

		   end

		   describe "oompa_loompa" do

		   	it "removes words < 3 letters long while keeping same order" do
		   		expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if","you","be","my"])
		   	end
		   end
		end

end