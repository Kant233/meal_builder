class RecipeBuilder
  @@stored_recipes = []
  attr_accessor :protein, :carbohydrate, :vegetable
  
  def initialize(protein, carbohydrate, vegetable)
    @protein = protein
    @carbohydrate = carbohydrate
    @vegetable = vegetable
  end
  def is_valid_protein
    if !@protein.empty? && !protein.nil?
      puts "A protein has been entered."
    end
  end
    
  def build
    puts "\n"
    puts "Welcome to Ruby Chef's Kitchen, lets start building your dinner recipe!"
    puts "\n"
    puts "What will be your choice of protein?"
    self.protein = gets.chomp.downcase
    puts "What carbohydrate will go along with your #{self.protein}?"
    self.carbohydrate = gets.chomp.downcase
    puts "Lastly, what vegetable will complete your meal?"
    self.vegetable = gets.chomp.downcase
    puts "\n"
    puts "Your recipe: #{self.protein.capitalize} with #{self.carbohydrate} and #{self.vegetable}."
    return self
  end
  
  def add 
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
      puts "1. Pan-Seared"
      puts "2. Fried"
      puts "3. Ruby Chef's decision"
      puts "4. End Simulation"
      choice = gets.chomp.to_i

      case choice
      when 1
        cook_choice = "Pan-Seared"
      when 2
        cook_choice = "Fried"
      when 3
        cook_choice = "Grilled"
      when 4
        puts "Thanks for playing!"
        break
      else
        puts "Invalid option"
       next
      end
      return cook_choice if [1, 2, 3].include?(choice)
    end
  end  

end
