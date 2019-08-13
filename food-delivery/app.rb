require_relative "team_repository"
require_relative "player_repository"

team_csv_path   = "teams.csv"
player_csv_path = "players.csv"

team_repo   = TeamRepository.new(team_csv_path)
player_repo = PlayerRepository.new(player_csv_path, team_repo)


teams = team_repo.all

teams.each do |team|
  puts "id: #{team.id}; name: #{team.name}; ranking: #{team.ranking}"
end

players = player_repo.all

players.each do |player|
  puts "id: #{player.id}; name: #{player.name}; position: #{player.position}; salary: #{player.salary}; team name: #{player.team.name}"
end
