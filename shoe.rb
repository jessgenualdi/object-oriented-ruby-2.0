require './sale_price.rb'

module StoreFront
  class Shoe
    attr_reader :shoe_type, :gender, :color, :size, :price
    include SalePrice

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
end