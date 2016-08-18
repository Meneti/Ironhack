class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

 ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

  def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

#map

aged_languages = array_of_languages.map do |language|
 language.age += 1 
 language
end

array_printer(aged_languages)

#sort

    sorted_arr = array_of_languages.sort do |x,y|
    y.age <=> x.age 
  end

array_printer(sorted_arr)

#delete

array_of_languages.delete_at(6)

array_printer(array_of_languages)

#shuffle

shuffle_array = sorted_arr.shuffle

array_printer(shuffle_array)

#select
array_select = array_of_languages.select do |language|
  language.age < 15
end

array_printer(array_select)

#Delete_if
delete_if = array_of_languages.delete_if do|language| 
 language == java
end

array_printer(delete_if)

#drop
drop_array = array_of_languages.drop(3) do|language| 
end

array_printer(drop_array)

array_of_languages.map! { | language | language.name += "!!!"}
