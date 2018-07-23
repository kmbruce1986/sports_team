require("minitest/autorun")
require("minitest/rg")

require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

def setup()
  @team = Team.new("Gryfindor", ["Harry", "Ron", "Ginny", "Angelica", "George", "Fred", "Oliver"], "Oliver", 0, "lose")
end

def test_get_team_name
  assert_equal("Gryfindor", @team.team_name)
end

def test_get_players
  # remember to put the [] in to indicate it's an array!
  assert_equal(["Harry", "Ron", "Ginny", "Angelica", "George", "Fred", "Oliver"], @team.players)
end

def test_get_coach
  assert_equal("Oliver", @team.coach)
end

def test_update_coach
  @team.coach = "Percy"
  assert_equal("Percy", @team.coach)
end

def test_add_new_player
  @team.add_new_player("Hermione")
  assert_equal(8, @team.players.count())
end

def test_player_on_team
  result = @team.player_on_team("Harry")
  assert_equal(true, result)
end

def test_points
  @team.points()
  assert_equal(0, @team.points)
end

# def test_points
# @team.points()
# assert_equal(0, @team.points)
# end


end
