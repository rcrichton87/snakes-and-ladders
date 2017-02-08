require('minitest/autorun')
require_relative('../piece.rb')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../snake_ladder.rb')
require_relative('../board.rb')
require('minitest/rg')

class Test_Piece < MiniTest::Test

  def setup
    @snake1 = SnakeLadder.new(43, 12)
    @ladder1 = SnakeLadder.new(3, 32)
    array_s_and_l = [@snake1, @ladder1]
    @board= Board.new(64, array_s_and_l )
  end

def test_board_size
  assert_equal(64, @board.size)
end

def  test_board_array
  assert_equal([@snake1, @ladder1], @board.array_of_s_and_l)
end

end