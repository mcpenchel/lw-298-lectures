class Plant
  attr_reader :green_house

  def initialize(name, green_house)
    @name = name
    @green_house = green_house

    @age = 0
    @height = 0
  end

  def pass_one_year!
    @age += 1

    if @age < 5
      @height += 1
    end
  end

  def basic_information
    puts "This plant is a #{@name}, planted in the #{@green_house.name}, is #{@age} years old and is #{@height} meters tall."
  end
end
