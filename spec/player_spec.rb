require('minitest/autorun')
require_relative('../player.rb')
require_relative('../piece.rb')
require_relative('../dice.rb')

require('minitest/rg')

class Test_Player < MiniTest::Test

  def setup()
    @piece1= Piece.new("Blue")
    @player1= Player.new("Bob", @piece1)
    @dice = Dice.new
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

  def test_player_roll_dice_and_move
    @piece1.move_piece(@dice.roll_dice)
    range_of_values = (3..13).to_a
    assert_equal(true, range_of_values.include?(@piece1.position))
  end

end
