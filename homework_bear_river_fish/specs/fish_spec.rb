require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

def setup ()
  @fish = Fish.new("Minnow")
end

class FishTest <MiniTest::Test

  def get_name
    assert_equal("Minnow", @fish.name)
  end

end
