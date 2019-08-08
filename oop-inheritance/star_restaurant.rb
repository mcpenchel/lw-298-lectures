require 'pry-byebug'

require_relative "restaurant"

class StarRestaurant < Restaurant
  def initialize(name, capacity, type, wait_list)
    super(name, capacity, type)

    @wait_list = wait_list
  end

  def print_customer_list
    puts "We don't share our customer list."
  end
end


carmelo = StarRestaurant.new("Carmelo", 80, "italian", "7 months")
carmelo.print_customer_list
puts carmelo.type
