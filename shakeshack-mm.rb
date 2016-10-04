class MilkShake
	attr_reader :ingredients, :recepy
  def initialize(recepy)
  	@recepy = recepy
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



class ShackShop
	attr_reader :shake_list
	def initialize
		@shake_list = [ ]
	end

	def add_milkshake(milkshake)
		@shake_list.push(milkshake)
	end

	def menu
		total = 0
		puts "Your selection:"
		puts "****************"
		@shake_list.each do |i|
			puts "#{i.recepy}: #{i.price_of_milkshake} "
			total += i.price_of_milkshake
		end
		puts "****************"
		puts "Total = #{total}"
		puts "****************"
	end

end


##### NEW INGREDIENT #####

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
bravas = Ingredient.new("Patatas Bravas", 3)
raspberry = Ingredient.new("Raspberry",2)
chorizo = Ingredient.new("Chorizo",4)


##### NEW MILKSHAKE #####

nizars_milkshake = MilkShake.new("Nizars")
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.add_ingredient(raspberry)

spanish_milkshake = MilkShake.new("Spanish")
spanish_milkshake.add_ingredient(bravas)
spanish_milkshake.add_ingredient(chorizo)

complete_milkshake= MilkShake.new("Complete")
complete_milkshake.add_ingredient(banana)
complete_milkshake.add_ingredient(chocolate_chips)
complete_milkshake.add_ingredient(raspberry)
complete_milkshake.add_ingredient(bravas)
complete_milkshake.add_ingredient(chorizo)

##### NEW SHAKESHOP #####

myshakelist = ShackShop.new
myshakelist.add_milkshake(nizars_milkshake)
myshakelist.add_milkshake(spanish_milkshake)
myshakelist.add_milkshake(complete_milkshake)

myshakelist.menu