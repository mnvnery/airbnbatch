class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :personality
  has_many :user_reviews
  has_many :personality_reviews
end
