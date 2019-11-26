require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')

class BearTest <MiniTest::Test

  def setup ()
    @bear = Bear.new("Yogi", "Grizzly")
  end

  #
  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_empty_stomach
    assert_equal([], @bear.empty_stomach)
  end
  #

  def test_bear_can_roar
    assert_equal("ROAR!!!", @bear.roar)
  end









end
