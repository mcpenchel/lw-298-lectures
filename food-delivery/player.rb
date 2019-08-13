class Player
  attr_reader :name, :salary, :position, :number,
              :team
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @salary = attributes[:salary] || 0
    @position = attributes[:position]
    @number = attributes[:number]
    @team = attributes[:team]
  end
end
