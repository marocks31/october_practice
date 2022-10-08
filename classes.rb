class Menu
  #best practice to keep readers and writers separate 
  attr_reader :meal, :print_order
  # writers can take in input and then "spit" it out
  attr_writer :spicy_level, :good

  
    def initialize(input_options)
      @meal = input_options[:meal]
      @price = input_options[:price]
      @spicy_level = input_options[:spicy_level]
      @order_number = input_options[:order_number]
      @good = input_options[:good]
    end

    def print_order
      puts "Order number: #{@order_number}"
      puts "In the order: #{@meal}"
      puts "Spicy level: #{@spicy_level}"
      puts "Total: $#{@price}"
      puts "Was it tasty? #{@good}"
    end

    def add_spice
    @spicy_level = @spicy_level + 1
    end 
end 

# don't need the curly braces or the parenthesis, will still be recognized as a hash
menu1 = Menu.new({order_number: 4, meal: "Cheese fries", spicy_level: 1, price: 10, good: true})
p menu1

#attr_writer
menu1.add_spice
p menu1
menu1.add_spice
p menu1
# can read because of the attr_reader
p menu1.meal

# can't read because not in the the attr_reader
# p menu1.spicy_level

p menu1.good=(false)
p menu1

menu2 = Menu.new({order_number: 5, meal: "Pizza", spicy_level: 2, price: 11, good: false})


p menu2
menu2.add_spice
p menu2

# inheritance 
# can only inherit one class but you can build a chain of inheritrance for example: Employee, Assistant_manager < Employee, Manager < Assistant_manager
class Secret_Menu < Menu
  def initialize(input_options)
    super
    @happy_meal_toy = input_options[:happy_meal_toy] 
  end 
  def free_icecream_cone
    p "You are a secret icecream winner"
  end 
end

secret1 = Secret_Menu.new({order_number: 5, meal: "Pizza", spicy_level: 2, price: 11, good: false, happy_meal_toy: "legos"})
secret1.free_icecream_cone
secret1.print_order
p secret1