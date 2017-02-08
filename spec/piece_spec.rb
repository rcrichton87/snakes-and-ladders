require('minitest/autorun')
require_relative('../piece.rb')

require('minitest/rg')

class Test_Piece < MiniTest::Test

  def setup
    @piece1= Piece.new("Blue")
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









end