require 'test_helper'

class OpportunityTest < ActiveSupport::TestCase

  should belong_to(:city)
  should validate_presence_of :title
  should validate_presence_of :description
  should validate_presence_of :how_to
  should validate_presence_of :city

  # test "validations" do
    
  # end
end
