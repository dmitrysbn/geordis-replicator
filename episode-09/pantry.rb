# The Pantry is where ingredients are stored.
# When this is instatiated, it should put stock
# its shelf with the necessary ingredients
# to make the recipe if it's working properly.

class Pantry

  def initialize
    @shelf = Location.new
    stock_shelf
  end

  def shelf
    @shelf
  end

  def stock_shelf
    Ingredient.names.each do |ingredient_name|
      100.times do
        @shelf.contents << Ingredient.new(ingredient_name)
      end
    end
  end

  def find_ingredient(name)
    @shelf.contents.find { |item| item.name == name }
  end

end
