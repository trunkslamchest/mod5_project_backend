class Question < ApplicationRecord

	has_many :answers
	has_many :users, through: :answers

	has_many :votes
	has_many :users, through: :votes

	has_many :comments, dependent: :destroy
	has_many :users, through: :comments

	# validates :category, :difficulty, :question, :correct_answer, presence: true
end
