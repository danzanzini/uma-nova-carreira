require 'test_helper'

class StateTest < ActiveSupport::TestCase
  test "should not save State without a Name and Acronym" do
    state = State.new
    assert_not state.save, "Saved State without a Name and Acronym"
  end

  test "should not save State with same Name or Acronym" do
    state = states(:first_state).dup
    assert_not state.save, "Saved State with repeated name or Acronym"
  end
end
