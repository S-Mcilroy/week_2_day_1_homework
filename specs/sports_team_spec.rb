require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new('CodeClan FC', ["Steven", "John", "Emma", "Jack", "Meredith"], 'Niall')
  end

  def test_team_name
    assert_equal("CodeClan FC", @sports_team.team_name)
  end

  def test_players
    assert_equal(["Steven", "John", "Emma", "Jack", "Meredith"], @sports_team.players)
  end

  def test_coach
    assert_equal("Niall", @sports_team.coach)
  end

  def test_set_coach_name
    @sports_team.coach = "Jordan"
    assert_equal('Jordan', @sports_team.coach)
  end

  def test_add_player
    @sports_team.add_player("Sam")
    assert_equal(["Steven", "John", "Emma", "Jack", "Meredith", "Sam"], @sports_team.players)
  end

  def test_check_if_player
    assert_equal(false, @sports_team.if_player("Sarah"))
  end

  def test_win_add_points
    @sports_team.win(true)
    assert_equal(3, @sports_team.points())
  end

end
