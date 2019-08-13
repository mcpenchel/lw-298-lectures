class Team
  attr_reader :name, :ranking, :players
  attr_accessor :id
  # The ranking goes from 1 to 10, 1 is the champion
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @ranking = attributes[:ranking] || 10
    @players = attributes[:players] || []
    @total_player_capacity = 11
  end

  def full?
    @total_player_capacity == @players.count
  end

  def line_up
    @players.each do |player|
      puts "#{player.number} - #{player.name}"
    end
  end

  def hire_player(player)
    fail Exception, "Team is full" if full?
    player.team = self
    @players << player
  end

end
