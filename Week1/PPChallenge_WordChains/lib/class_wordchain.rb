

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    

    def find_chain (word1, word2)
    	working_word= word1.clone
	    starting_word = ""
    	while word1 != word2  && starting_word != working_word do 
	    	starting_word = working_word.clone
	    	
	    	(0..word1.length-1).each{|i| 

	    		if working_word[i] != word2[i]
	    			working_word[i] = word2[i]
	    			# p working_word 
 	    		
	    			
	    			if @dictionary.exists?(working_word)
	    				word1=working_word.clone

	    			else
	    				working_word= word1.clone
	    			end
    				 # p working_word
	    		end
			}

			p working_word
		end
       
    end
end