class Animal
  def self.families
    ["mammal", "reptile", "birds"]
  end
end


lion = Animal.new("Lion", "Fierce", 7, "mammal")

class House
  attr_reader :city

  def initialize(city, width, length)
    @city = city
    @width = width
    @length = length
  end

  def self.price_per_square_meter(city)
    case city
    when "Rio" then 9000
    when "Sao Paulo" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end


lewagon_house = House.new("Rio", 50, 50)

House.price_per_square_meter(lewagon_house.city)
