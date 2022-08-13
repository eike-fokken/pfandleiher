class IssuableArticle < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
