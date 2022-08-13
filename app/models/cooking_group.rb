class CookingGroup < ApplicationRecord
  belongs_to :packing_lane
  validates :name, uniqueness: true, presence: true
end
