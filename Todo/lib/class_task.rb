class Task
	attr_reader :content, :id , :created_at
	@@current_id = 1
    def initialize(content)
        @content = content
        @status_completed = false
        @created_at = Time.now
    
        @id = @@current_id
        @@current_id += 1
    end

    def complete?
    	if @status_completed == true
    		true
 		else
 			false
 		end
    end

    def complete!
         @status_completed = true
    end

    def make_incomplete!
    	@status_completed = false
 	end
   
end