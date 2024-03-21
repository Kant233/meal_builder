require "minitest/autorun"
require "./meal_builder"

class TestRecipeBuilder < Minitest::Test
  def test_protein
    @recipebuilder = RecipeBuilder.new
    @protein = "chicken"
    assert_equal("chicken", @protein)
  end
  def test_carbohydrate
    @recipebuilder = RecipeBuilder.new
    @carbohydrate = "rice"
    assert_equal("rice",@carbohydrate)
  end
  def test_vegetable 
    @recipebuilder = RecipeBuilder.new
    @vegetable = "leeks"
    assert_equal("leeks", @vegetable)
  end

end



 
