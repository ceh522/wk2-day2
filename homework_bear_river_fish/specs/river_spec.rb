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

  
  # - A bear should be able to take a fish from the river
  # - A river should lose a fish when a bear takes a fish





end
