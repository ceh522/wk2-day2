require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')

#had as linked to all three - higher level - bear or river could be highest

class BearTest <MiniTest::Test

  def setup ()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fish.new("Minnow")
  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_empty_stomach
    assert_equal([], @bear.empty_stomach)
  end

  def test_bear_can_roar
    assert_equal("ROAR!!!", @bear.roar)
  end

  def test_gain_fish
    result = @bear.gain_fish(@fish)
    assert_equal(1, result.length)
  end

  # solution
  # def test_bear_can_take_fish_from_river
  #   @bear.take_fish_from_river(@river)        #fish out of river, going to bear (intention)
  #   assert_equal(1, @bear.food_count)         #check what's in stomach
  #   assert_equal(2, @river.number_of_fishes)  #check what's in river
  # end
  #
  # def test_bear_cant_take_fish_from_empty_river
  #   river = River.new("Tay", [])
  #   @bear.take_fish_from_river(river)
  #   assert_equal(0, @bear.food_count)        #same, but with river with no fish
  #   assert_equal(0, river.number_of_fishes)
  # end

  #ahould test for this scenario - no fish in river



end
