require 'csv'
require_relative 'team'

class TeamRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @teams = []
    load_csv
  end

  def all
    @teams
  end

  def find(id)
    @teams.find {|team| team.id == id}
  end

  def add_team(team)
    team.id = @teams.last.id + 1
    @teams << team

    save_csv
  end

  def remove_team(team)
    @team.delete(team)

    save_csv
  end

  private
  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_file_path, csv_options) do |row|
      # row became a hash because of the
      # csv_options that I sent
      row[:id]      = row[:id].to_i
      row[:ranking] = row[:ranking].to_i

      @teams << Team.new(row)
    end
  end

  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, "wb", csv_options) do |csv|
      csv << [
        "id","name","position","number",
        "salary","team_id"
      ]

      @players.each do |player|
        csv << [
          player.id, player.name, player.position,
          player.number, player.salary, player.team.id
        ]
      end
    end
  end

end
