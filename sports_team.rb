
class SportsTeam

attr_reader :team_name, :players
attr_accessor :coach, :points

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

def add_player(new_player)
  @players.push(new_player)
end

def if_player(name)
  for player in @players
    if player == name
      return true
    end
    return false
  end
end

def win(result)
  if result == true
    @points += 3
  end
end


end
# def team_name
#   return @team_name
# end
#
# def players
#   return @players
# end
#
# def coach
#   return @coach
# end

# def set_coach(new_coach)
#   @coach = new_coach
# end
