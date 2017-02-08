require('minitest/autorun')
require_relative('../piece.rb')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../snake_ladder.rb')
require('minitest/rg')

class Test_Piece < MiniTest::Test

  def setup
    @piece1= Piece.new("Blue")
    @snake1 = SnakeLadder.new(43, 12)
    @ladder1 = SnakeLadder.new(3, 32)
  end

def test_piece_name
  expected="Blue"
  actual=@piece1.name
  assert_equal(expected, actual)
end

def test_start_position
 expected=1
 actual=@piece1.position
 assert_equal(expected, actual) 
end

def test_move_piece
  expected = 7
  actual = @piece1.move_piece(6)
  assert_equal(expected, actual)
end

def test_fall_or_climb
  @piece1.fall_or_climb(@snake1)
 expected= 12
 actual= @piece1.position
 assert_equal(expected, actual) 
end









end