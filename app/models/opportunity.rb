class Opportunity < ActiveRecord::Base
  belongs_to :city

  validates :title, :description, :how_to, :city, presence: true
end
