require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_person')

class PersonTest <MiniTest::Test

  def setup ()
    @person1 = Person.new("Fred", 12)
  end

  def test_get_name
    assert_equal("Fred", @person1.name)
  end
  
  def test_get_age
    assert_equal(12, @person1.age)
  end




end
