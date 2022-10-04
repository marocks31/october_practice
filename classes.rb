class Menu
  attr_reader :meal, :print_order
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