require 'test_helper'

class CityTest < ActiveSupport::TestCase

  should belong_to(:state)
  should validate_presence_of :state
  should validate_presence_of :name

  test "Should not have a repetead name inside the same state" do
    city = cities(:first_city).dup
    assert_not city.save, "Saved city with a repeated Name"

    city.state = states(:second_state)
    assert city.save, "Not Saving city with same name in different state"
  end
end
