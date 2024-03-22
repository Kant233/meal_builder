require "minitest/autorun"
require "./meal_builder"

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
    recipe = RecipeBuilder.new("Tofu","Pasta","Beans")
    refute(recipe.is_valid_protein)
  end
end



 
