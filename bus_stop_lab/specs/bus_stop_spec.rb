require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop')

class Bus_StopTest <MiniTest::Test

  def setup ()
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

  def test_get_bus_destination
    assert_equal("Ocean Terminal", @bus1.destination)
  end





end
