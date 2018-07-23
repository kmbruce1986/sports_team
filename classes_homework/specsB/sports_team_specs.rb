require("minitest/autorun")
require("minitest/rg")

require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

def setup()
  @team = Team.new("Gryfindor", ["Harry", "Ron", "Ginny", "Angelica", "George", "Fred", "Oliver"], "Oliver")
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

end
