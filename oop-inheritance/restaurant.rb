class Restaurant
  attr_reader :name, :type
  attr_accessor :capacity

  def self.types
    [
      "italian", "fast_food", "spanish", "japanese",
      "brazilian", "mexican", "trash", "qsr"
    ]
  end

  def initialize(name, capacity, type)
    @name = name
    @capacity = capacity
    @type = type

    @customers = []
  end

  def print_customer_list
    @customers.each_with_index do |customer, index|
      puts "#{index + 1}. #{customer}"
    end
  end

  def add_customer(customer_name)
    @customers << customer_name
  end
end

puts Restaurant.types
new_r = Restaurant.new("New restaurant", 20, "italian")
# new_r.types
