class PackingLane < ApplicationRecord
  has_many :cooking_groups
  validates :number, uniqueness: true, presence: true
end
