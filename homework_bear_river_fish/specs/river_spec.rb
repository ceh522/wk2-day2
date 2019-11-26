require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')

def setup ()
  @river = River.new("Amazon")
end

class RiverTest <MiniTest::Test

  def get_name
    assert_equal("Amazon", @river.name)
  end




 # 
 # - A bear should be able to take a fish from the river
 # - A river should lose a fish when a bear takes a fish
 #
 #
 # - A river could have a fish_count method




end
