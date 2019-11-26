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

  def test_get_bus_number
    assert_equal(22, @bus1.route)
  end

  def test_bus_has_drive
    assert_equal("Brum, brum", @bus1.drive)
  end




end
