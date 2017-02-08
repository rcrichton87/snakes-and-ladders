class Game
 attr_reader :array_of_players
 def initialize(array_of_players)
   @array_of_players = array_of_players
 end

 def check_victory(player,boardsize)
  thing= player.piece
  if 
    thing.position >= boardsize
    return true
  else
    return false
  end
  end

  def next_player(previous_player)
    prevous_player_index = @array_of_players.index(previous_player)
    if prevous_player_index == @array_of_players.length - 1
      return array_of_players[0]
    else
      return array_of_players[prevous_player_index + 1]
    end
  end




end