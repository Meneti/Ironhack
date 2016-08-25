

require_relative("../lib/class_task.rb")

RSpec.describe Task do
  
  describe "complete?" do
    it "returns false for newly added tasks" do
      task1 = Task.new("grocery shopping")
      expect( task1.complete? ).to eq(false)
    end
  end


     describe "complete!" do
     it "modifies task and sets it to complete" do
      task1 = Task.new("grocery shopping")

      task1.complete!
      

      expect( task1.complete? ).to eq(true)
    end
    end

      describe "make_incomplete!" do
      it "modifies task and sets it to incomplete" do
      task1 = Task.new("grocery shopping")

      task1.complete!
      task1.make_incomplete!

    expect( task1.complete? ).to eq(false)
    end
    end

    describe "update_content!" do
      it "edits the content of the task" do
      task1 = Task.new("grocery shopping")

      task1.complete!
      task1.make_incomplete!

    expect( task1.complete? ).to eq(false)
    end
    end
end
