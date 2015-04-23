require 'test_helper'

class CityTest < ActiveSupport::TestCase
  test "Should not save without a State" do
    city = City.new(name: "Test City")
    assert_not city.save, "Saved city without a State"
  end

  test "Should not save without a name" do
    city = City.new
    city.state = states(:first_state)
    assert_not city.save, "Saved city without a Name"
  end

  test "Should not have a repetead name inside the same state" do
    city = cities(:first_city).dup
    assert_not city.save, "Saved city with a repeated Name"

    city.state = states(:second_state)
    assert city.save, "Not Saving city with same name in different state"
  end
end
