class Question < ApplicationRecord

	has_many :answers
	has_many :users, through: :answers

	# validates :category, :difficulty, :question, :correct_answer, presence: true
end
