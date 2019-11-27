require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest <MiniTest::Test

  def setup ()
    @fish = Fish.new("Minnow")                    #probs for clarity, make more, diff fish
    @river = River.new("Amazon", [@fish, @fish])
  end

  def test_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_count
    assert_equal(2, @river.fish_count)
  end

  def test_lose_fish
    assert_equal(0, @river.lose_fish(@fish))
  end

  def fish_is_taken_from_river_by_bear(fish)
    fish = @fish
    @bear.gain_fish(fish)
    @river.lose_fish(fish)
  end

#need to test for if nothing in river, or would add nil to stomach/food array - no actual food

#solution:
# def test_can_get_fish
#   fish = @river.get_fish
#   assert_equal(@fish3.name, fish.name)
# end
#
# def test_cannot_get_fish_from_empty_river
#   fish1 = @river.get_fish
#   fish2 = @river.get_fish
#   fish3 = @river.get_fish                #emptying river
#   no_fish = @river.get_fish
#   assert_nil(no_fish)
# end

end
