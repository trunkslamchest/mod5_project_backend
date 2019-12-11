class User < ApplicationRecord

  # has_many :cart_items, dependent: :destroy
  # has_many :items, through: :cart_items

  has_secure_password

	validates :user_name, :email, :access, :first_name, :last_name, :gender, :birth_day, :birth_month, :birth_year, :house_number, :street_name, :city_town, :state, :zip_code, presence: true
	validates :user_name, uniqueness: true

end
