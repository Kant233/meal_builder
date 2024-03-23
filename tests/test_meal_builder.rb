require "minitest/autorun"
require "./meal_builder"
require 'stringio'

class TestRecipeBuilder < Minitest::Test
  def setup
    @recipebuilder = RecipeBuilder.new("chicken", "rice", "peas")
    puts "Starting test"
  end
  def teardown
    puts "End of test"
    puts "\n"
  end
  def test_protein
    assert_equal("chicken", @recipebuilder.protein)
  end
  def test_carbohydrate
    assert_equal("rice", @recipebuilder.carbohydrate)
  end
  def test_vegetable 
    assert_equal("peas", @recipebuilder.vegetable)
  end
  def test_valid_protein
    assert("chicken", @recipebuilder.is_valid_protein)
  end
  def test_invalid_protein
    recipe = RecipeBuilder.new("Peas","Pasta","Beans")
    refute(recipe.is_valid_protein)
    puts "Invalid protein choice "
  end
  
  def test_cook
    cook_choice = RecipeBuilder.new("chicken","pasta","beans").cook
    input1 = StringIO.new("1\n") # fake user input
    $stdin = input1 #stub to use the fake input
    assert_equal "Pan-Seared", cook_choice
  end

end



 
