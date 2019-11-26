require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop')
require_relative('../bus_person')

class Bus_StopTest <MiniTest::Test

  def setup ()
    @bus1 = Bus.new(22, "Ocean Terminal")

    @passenger1 = Person.new("Bob", 23)
    @passenger2 = Person.new("Jill", 45)


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

  def test_get_number_of_passengers
    assert_equal(0, @bus1.passengers_numbers)
  end

  def test_passenger_pick_up
    result = @bus1.pick_up(@passenger1)
    assert_equal(1, result.length)
  end

  def test_drop_off
    @bus1.pick_up(@passenger1)
    @bus1.pick_up(@passenger2)
    assert_equal(1, @bus1.drop_off(@passenger1))
  end

  def test_empty_bus
    @bus1.pick_up(@passenger1)
    @bus1.pick_up(@passenger2)
    assert_equal(0, @bus1.empty_bus)
  end


end
