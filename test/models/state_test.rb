require 'test_helper'

class StateTest < ActiveSupport::TestCase
  should validate_presence_of :name
  should validate_presence_of :acronym
  should validate_uniqueness_of :name
  should validate_uniqueness_of :acronym
end
