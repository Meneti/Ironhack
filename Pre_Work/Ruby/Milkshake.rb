class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
    total_price_of_milkshake = @base_price
    @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
    end
    total_price_of_milkshake
    end
end
  

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShoppinCart
  def initialize
      @MilkShake = [ ]
  end
  def add_milkshake(milkshake)
    @MilkShake.push(milkshake)
    end
    def checkout
  checkout = 0
  @MilkShake.each do |milkshake|
    checkout += milkshake.price_of_milkshake
  end
  checkout
  end
end

    banana = Ingredient.new("banana", 2)
  strawberry = Ingredient.new("strawberry", 3)
  chocolate =Ingredient.new("chocolate", 1)

menetis_milkshake=MilkShake.new
menetis_milkshake.add_ingredient (strawberry)
puts menetis_milkshake.price_of_milkshake

johns_milkshake=MilkShake.new
johns_milkshake.add_ingredient (chocolate)
puts johns_milkshake.price_of_milkshake

shopping_cart=ShoppinCart.new
shopping_cart.add_milkshake (menetis_milkshake)
shopping_cart.add_milkshake (johns_milkshake)

puts shopping_cart.checkout
