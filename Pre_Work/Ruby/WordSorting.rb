puts "Type a sentence"
	sentence = gets.chomp
	clean_sentence = sentence.gsub(/[^a-zA-Z0-9\-]/," ") 
	sentence_array = clean_sentence.split(" ")
	sentence_array.sort {|a,b| a.upcase <=> b.upcase}