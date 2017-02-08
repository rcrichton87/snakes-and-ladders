require('minitest/autorun')
require_relative('../piece.rb')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../snake_ladder.rb')
require_relative('../board.rb')
require_relative('../game.rb')
require('minitest/rg')

class Test_Piece < MiniTest::Test

def setup()
  @piece1= Piece.new("Blue")
  @piece2= Piece.new("Green")
  @piece3= Piece.new("Red")
  @player1= Player.new("Bob", @piece1)
  @player2= Player.new("Ross", @piece2)
  @player3= Player.new("Richard", @piece3)
  @array_of_players=[@player1, @player2,@player3]
  @game = Game.new(@array_of_players)
  @board= Board.new(64, [] )
end

def test_game_has_players
  assert_equal(@array_of_players, @game.array_of_players)
end

def test_game_can_end
  @piece1.move_piece(654)
  expected=true
  actual = @game.check_victory(@player1,@board.size)
  assert_equal(expected, actual)
end

def test_game_continue
  @piece1.move_piece(62)
  expected=false
  actual = @game.check_victory(@player1,@board.size)
  assert_equal(expected, actual)
end

def test_player_turns
  expected = @player2
  actual = @game.next_player(@player1)
  assert_equal(expected, actual)
end

def test_player_turns__end_of_array
  expected = @player1
  actual = @game.next_player(@player3)
  assert_equal(expected, actual)
end





end