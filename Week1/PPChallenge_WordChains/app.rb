require ("ruby-dictionary")

require_relative ("lib/class_wordchain.rb")


the_dictionary = Dictionary.from_file("/usr/share/dict/words")

my_chain = WordChain.new(the_dictionary)
my_chain.find_chain("lead", "gold")

