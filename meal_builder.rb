class RecipeBuilder
  attr_accessor :protein, :carbohydrate, :vegetable
  
  def initialize
    @protein = protein
    @carbohydrate = carbohydrate
    @vegetable = vegetable
  end
  def build
    puts "\n"
    puts "Welcome to Ruby Chef's Kitchen, lets start building your dinner recipe!"
    puts "\n"
    puts "What will be your choice of protein?"
    self.protein = gets.chomp.downcase
    puts "What carbohyrdrate will go along with your #{self.protein}?"
    self.carbohydrate = gets.chomp.downcase
    puts "Lastly, what vegetable will complete your meal?"
    self.vegetable = gets.chomp.downcase
    puts "\n"
    puts "Your recipe: #{self.protein.capitalize} with #{self.carbohydrate} and #{self.vegetable}."
    return self
  end
  
  def add 
    stored_recipes = []
    puts "\n"
    recipe = build
    if !@protein.blank? && !@carbohydrate.blank? && !@vegetable.blank?
       
      stored_recipes.push(recipe)
      puts "Recipe stored successfully!"
    else
      puts "Failed to store recipe, please enter valid options."
    end
  end
  def cook
    loop do
    puts "\n"
    puts "How would you like to cook your protein?"
    puts "1. Pan-sear"
    puts "2. Fry"
    puts "3. Bake"
    puts "4. Ruby chef's decision"
    puts "5. End simulation"
    choice = gets.chomp.to_i
    case choice
    when 1
     sear
    when 2
      fry
    when 3
      bake
    when 4
      chef
    when 5 
      puts "Thanks for playing!"
      break; 
    end 
  end
  def sear
    puts "You decided to pan-sear your #{@protein} excellent choice!"
  end
  def fry
    puts "You decided to fry your #{@protein}, excellent choice!"
  end
  def bake 
    puts "You decided to bake your #{@protein}, excellent choice!"
  end
  def chef
    cook = ["pan-sear", "fry","bake"].sample
    puts "The chef has decided to #{cook} your #{@protein}!"
 end
end
end

