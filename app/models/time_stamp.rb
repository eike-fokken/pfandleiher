class TimeStamp < ApplicationRecord
  belongs_to :IssuableArticle
  belongs_to :CookingGroup
end
