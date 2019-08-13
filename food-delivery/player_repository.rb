require "csv"
require_relative "player"

class PlayerRepository

  def initialize(csv_file_path, team_repo)
    @csv_file_path = csv_file_path
    @team_repo = team_repo
    @players =  []
    load_csv
  end

  def all
    @players
  end

  def players_list(team_id)
    @players.select {|player| player.team.id == team_id}
  end

  def add_player(player)
    player.id = @players.last.id + 1
    @players << player
    save_csv
  end

  private
  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:salary] = row[:salary].to_i
      row[:number] = row[:number].to_i
      row[:team_id] = row[:team_id].to_i

      row[:team] = @team_repo.find(row[:team_id])

      @players << Player.new(row)
    end
  end

  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, "wb", csv_options) do |csv|
      csv << ["id", "name", "ranking"]

      @teams.each do |team|
        csv << [team.id, team.name, team.ranking]
      end
    end
  end

end
