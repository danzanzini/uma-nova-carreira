class State < ActiveRecord::Base

  validates :name, :acronym, presence: true
  validates :name, :acronym, uniqueness: true
end
