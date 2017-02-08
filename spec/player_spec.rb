require('minitest/autorun')
require_relative('../player.rb')
require_relative('../piece.rb')

require('minitest/rg')

class Test_Player < MiniTest::Test

def setup()
  @piece1= Piece.new("Blue")
  @player1= Player.new("Bob", @piece1)
 
end

def test_player_has_name
expected="Bob"
actual=@player1.name
assert_equal(expected, actual)
end

def test_player_has_counter
  expected=@piece1
  actual=@player1.piece
  assert_equal(expected, actual)
  end



end