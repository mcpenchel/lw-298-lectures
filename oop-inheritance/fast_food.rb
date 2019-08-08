require_relative "restaurant"

class FastFood < Restaurant
  attr_reader :rats

  def initialize(name, capacity)
    super(name, capacity, "fast_food")

    @rats = false
  end
end

mcdonalds = FastFood.new("McDonalds", 50)
puts mcdonalds.name
mcdonalds.add_customer("Matheus")
mcdonalds.print_customer_list


puts mcdonalds.type
