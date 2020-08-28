class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :personalities

  validates :first_name, :last_name, :location, :language, :phone, :birthdate, :image_url, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
