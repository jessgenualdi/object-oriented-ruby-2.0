puts "Welcome to The Shoe Store!"

# shoe1 = {:shoe_type => "Boot", :gender => "Women's", :color => "Black", :shoe_size => 9, :price => 50}
# shoe2 = {shoe_type: "Gym", gender: "Men's", color: "Red", shoe_size: 12, price: 70, active: true}
# shoe3 = {"shoe_type" => "Heals", "gender" => "Women's", "color" => "Blue", "shoe_size" => 7, "price" => 30}
# puts
# puts "#{shoe1[:shoe_type]} #{shoe1[:price]}"


# class Shoe
#   def initialize(input_shoe_type, input_gender, input_color, input_shoe_size, input_price)
#     @shoe_type = input_shoe_type
#     @gender = input_gender
#     @color = input_color
#     @shoe_size = input_shoe_size
#     @price = input_price
#   end

#   def shoe_type
#     @shoe_type
#   end

#   def gender
#     @gender
#   end

#   def color
#     @color
#   end

#   def shoe_size
#     @shoe_size
#   end

#   def price
#     @price
#   end

#   def print
#     puts "Order info: #{@gender} #{@shoe_type} | #{@color} | #{@shoe_size} price: #{@price}"
#   end
# end

class Shoe
  attr_reader :shoe_type, :gender, :color, :size, :price

  def initialize(input_options)
    @shoe_type = input_options[:shoe_type]
    @gender = input_options[:gender]
    @color = input_options[:color]
    @shoe_size = input_options[:size]
    @price = input_options[:price]
  end



  def print
    puts "Order info: #{@gender} #{@shoe_type} | #{@color} | #{@shoe_size} price: #{@price}"
  end
end



puts
shoe1 = Shoe.new(shoe_type: "Cowboy Boots", gender: "Men's", color: "Black and Blue", size: 13, price: 500)
shoe1.print
puts
