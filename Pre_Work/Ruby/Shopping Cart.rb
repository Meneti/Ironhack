require 'date'

class ShoppingCart
  def initialize
    @items = []
  end
  def add_item(item)
  @items.push(item)
  end
  def total_price
  total_price= 0
  @items.each do |item|
  total_price+= item.price
  end
  total_price
  end
end

class Items
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Houseware < Items
  def price
    if @price>100
      price*0.95
  end
  end
end

class Fruit < Items
  def price
  
    if Date.today.saturday?
      price=@price*0.9
    elsif Date.today.sunday?
      price=@price*0.9
    else 
      price=@price
    end
    end
end
  

banana= Fruit.new("Banana", 10)
orange= Fruit.new("Orange", 10)
rice= Items.new("Rice",1)
vacumm_cleaner= Houseware.new("Vacumm cleaner",150)
anchovies = Items.new("anchovies",1)

puts banana.price

menetis_cart=ShoppingCart.new
menetis_cart.add_item(banana)
menetis_cart.add_item(rice)
menetis_cart.add_item(anchovies)

menetis_cart.total_price
x=menetis_cart.total_price
puts "Your total today is #{x}"
