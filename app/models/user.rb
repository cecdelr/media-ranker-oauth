class User < ApplicationRecord
  has_many :votes
  has_many :ranked_works, through: :votes, source: :work
  # Wave 3
  has_many :works
  # End Wave 3

  validates :username, uniqueness: true, presence: true
end
