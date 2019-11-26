require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../pet')

class TestCustomer < MiniTest::Test

  def setup()
    @new_pet = Pet.new("Garfield", :cat, "Exotic Shorthair", 500)
    @customer = Customer.new("Jon Arbuckle", 1000)
  end

  def test_customer_has_name()
    assert_equal("Jon Arbuckle", @customer.name)
  end

  def test_customer_has_cash()
    assert_equal(1000, @customer.cash)
  end

  def test_customer_can_add_cash()
    @customer.add_cash(250)
    assert_equal(1250, @customer.cash)
  end

  def test_customer_can_remove_cash()
    @customer.remove_cash(250)
    assert_equal(750, @customer.cash)
  end

  def test_customer_pets_starts_empty()
    assert_equal(0, @customer.pet_count())
  end

  def test_can_add_pet_to_customer
    @customer.add_pet(@new_pet)
    assert_equal(1, @customer.pet_count)
  end

  def test_can_get_total_pet_cost
    @customer.add_pet(@new_pet)
    @customer.add_pet(@new_pet)
    @customer.add_pet(@new_pet)
    assert_equal(1500, @customer.get_total_value_of_pets)
  end



















end
