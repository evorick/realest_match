class Buyer < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :user
  
  validates :first_name, :last_name, :phone_number, :email, :number_bedrooms, :number_bathrooms, :city, :state, :min_price, :max_price, presence: true
  validates :first_name, :last_name, :email, length: { maximum: 25 }
  validates :number_bedrooms, :number_bathrooms, :min_price, :max_price, numericality: { only_integer: true }
  validates :number_bedrooms, :number_bathrooms, numericality: { greater_than_or_equal_to: 0 }
  validates :min_price, numericality: true
  validates :max_price, numericality: true
  validates :email, format: { with: /.+@.+\..+/i, message: "must be a valid email address" }
  validates :email, uniqueness: true
end
