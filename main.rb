require './sale_price.rb'
require './shoe.rb'

puts
shoe1 = StoreFront::Shoe.new(shoe_type: "Cowboy Boots", gender: "Men's", color: "Black and Blue", size: 13, price: 500)
shoe1.print
shoe1.lowerPrice
shoe1.print

puts