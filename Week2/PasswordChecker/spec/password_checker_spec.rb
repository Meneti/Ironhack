require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
  describe "#check_password" do

    it "returns false if all conditions are not met" do
      the_checker = PasswordChecker.new
      expect( the_checker.check_password("nizar@example.com", "nizarA7%as1245") ).to eq(true)
    end
end
end
     