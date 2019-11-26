require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest <MiniTest::Test

  def setup ()
    @fish = Fish.new("Minnow")
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


end
