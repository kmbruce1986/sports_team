class Team

  attr_reader :team_name, :players, :coach

  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def player_on_team(player_name)
    @players.include?(player_name)
  end

end
