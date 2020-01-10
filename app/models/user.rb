class User < ApplicationRecord

  has_many :answers, dependent: :destroy
  has_many :questions, through: :answers

  has_many :votes, dependent: :destroy
  has_many :questions, through: :votes

  has_many :comments, dependent: :destroy
  has_many :questions, through: :comments

  has_secure_password

	validates :user_name, :email, :access, :first_name, :last_name, :gender, :birth_day, :birth_month, :birth_year, :house_number, :street_name, :city_town, :state, :zip_code, presence: true
	validates :user_name, :email, uniqueness: true

end
