require('minitest/autorun')
require_relative('../snake_ladder.rb')

require('minitest/rg')

class Test_SnakeLadder < MiniTest::Test

  def setup
    @snake1 = SnakeLadder.new(43, 12)
    @ladder1 = SnakeLadder.new(3, 32)
  end 

def test_has_start_position
  assert_equal(43, @snake1.start)
  assert_equal(3, @ladder1.start)
end

def test_has_end_position
  assert_equal(12, @snake1.end)
  assert_equal(32, @ladder1.end)
end

end