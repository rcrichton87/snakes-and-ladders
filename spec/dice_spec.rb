require('minitest/autorun')
require_relative('../dice.rb')

require('minitest/rg')

class Test_Dice < MiniTest::Test

def setup
 @dice = Dice.new
end

  def test_roll_dice
    range_of_values = (2..12).to_a
    actual = @dice.roll_dice
    assert_equal(true, range_of_values.include?(actual))
  end

end