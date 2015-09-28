class Buyer < ActiveRecord::Base
  belongs_to :user
  validates :first_name, :last_name, :phone_number, :email, :number_bedrooms, :number_bathrooms, :city, :state, :min_price, :max_price, presence: true
  validates :first_name, :last_name, :email, length: { maximum: 25 }
  validates :phone_number, :number_bedrooms, :number_bathrooms, :min_price, :max_price, numericality: { only_integer: true }
  validates :number_bedrooms, :number_bathrooms, numericality: { greater_than_or_equal_to: 1 }
  validates :min_price, numericality: { greater_than_or_equal_to: 0 }
  validates :max_price, numericality: { greater_than_or_equal_to: 50000 }
end
