class City < ActiveRecord::Base
  belongs_to :state

  validates :state, presence: true
  validates :name, presence: true

  validates :name, uniqueness: { scope: :state,
    message: "Should not have the same name in a same state" }
end
