require_relative "plant"

class GreenHouse
  attr_reader :name, :capacity, :location, :plants

  def initialize(name, capacity, location)
    @name = name
    @capacity = capacity
    @location = location

    @plants = []
  end

  def new_plant!(plant_name)
    @plants << Plant.new(plant_name, self)
  end
end

best_green_house = GreenHouse.new("Mastodon Greenhouse", 100, "Mastodon Bay, USA")

best_green_house.new_plant!("Venus Flytrap")
best_green_house.new_plant!("Bonsai")

best_green_house.plants[0].pass_one_year!
best_green_house.plants[0].pass_one_year!
best_green_house.plants[0].pass_one_year!

best_green_house.plants[1].pass_one_year!

best_green_house.plants.each do |plant|
  plant.basic_information
end
