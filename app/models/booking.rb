class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :personality
  has_many :user_reviews
  has_many :personality_reviews, dependent: :destroy

  def calc_total_price
    hours = (self.end_date - self.start_date) / 3600
    (hours.to_f * self.personality.price_hour.to_f).round
  end
end
