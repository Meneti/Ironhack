class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]


homes.each do |hm|
  puts "#{hm.name}'s place in San Juan"
  puts "Price $ #{hm.price} a night"
end


price_array = homes.map do |hm|
  hm.price
end
p price_array

total=0
price_array.each do |price|
total += price
  end

number_homes = price_array.length

average = total/number_homes

puts average

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts total_capacities

price_total = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end

average_new = price_total/number_homes

puts average_new

#Final _Exercise

class Houses
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

houses = [
  Houses.new("Ana's place", "Miami", 2, 42),
  Houses.new("Bob's place", "Boston", 5, 48),
  Houses.new("Cate's place", "NY", 3, 41),
  Houses.new("Deb's place", "Orlando", 2, 44),
  Houses.new("Elle's place", "Jacksonville", 4, 49),
  Houses.new("Fernando's place", "Oakland", 2, 42),
  Houses.new("Gabe's place", "Nashville", 5, 47),
  Houses.new("Hillary's place", "San Francisco", 3, 46),
  Houses.new("Ingrid's place", "Chicago", 2, 45),
  Houses.new("Julian's place", "Hoboken", 4, 49)
]

houses.each do |houses|
  puts houses.name
end


puts "Enter 1 if you want to sort from highest price to lowest and 0 if lowest to highest. If you want to sort by capacity, enter the word capacity"
sort_input = gets.chomp

if sort_input == 0
  highest_lowest = houses.sort do |a,b|
  a.price <=> b.price
  end
elsif sort_input == 1
  lowest_highest = houses.sort do |a,b|
  b.price <=> a.price
  end
elsif sort_input == "capacity"
  by capacity = houses.sort do |a,b|
  b.capacity <=> a.capacity
  end
end

select_city = gets.chomp.downcase
houses_city_select = houses.select do |houses|
  houses.city.downcase  == select_city
end

price_sum_houses = houses.reduce(0.0) do |sum, ho|
  sum + ho.price
end

number_houses= houses.length

average_price_houses = price_sum_houses/number_houses

=begin
 
user_inupt == "name" 
puts "Enter your desired price:"
sse github
  
end






