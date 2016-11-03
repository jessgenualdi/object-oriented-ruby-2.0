class Vehicle 

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :model, :gas_milage

  def initialize(input)
    super()
    @gas_milage = input[:gas_milage]
    @model = input[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :gear, :fixed
  def initialize(input)
    super()
    @gear = input[:gear]
    @fixed = input[:fixed]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new(gas_milage: 10, model: "VW")
bike1 = Bike.new(gear: 10, fixed: true)

car1.honk_horn
bike1.ring_bell

puts car1.accelerate
puts car1.turn("east")
puts car1.model

puts bike1.gear
