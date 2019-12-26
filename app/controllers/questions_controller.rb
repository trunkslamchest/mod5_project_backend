class QuestionsController < ApplicationController

	def index
		# byebug
		@questions = Question.order(id: :desc)
		render json: QuestionSerializer.new(@questions).serialized_json
	end

	def show
		@question = Question.find(params[:id])
		render json: QuestionSerializer.new(@question).serialized_json
	end

	def create
		@question = Question.create(create_question_params)
			render json: {
							question_desc: @question.question_desc,
							difficulty: @question.difficulty,
							category: @question.category,
							correct_answer: @question.correct_answer,
							incorrect_answers: @question.incorrect_answers
						}
	end

	def update
		@question = Question.find(params[:id])
		question_update = @question.update(update_question_params)
		if @question.valid?
			render json: {
				id: @question.id,
				question_desc: @question.question_desc,
				difficulty: @question.difficulty,
				category: @question.category,
				correct_answer: @question.correct_answer,
				incorrect_answers: @question.incorrect_answers
			}
		else
			render json: { errors: @question.errors.full_messages }, status: :unprocessable_entity
		end
	end


	def destroy
		@question = Question.find(params[:id])

		@question.destroy

		render json: @question
	end

private

	def update_question_params
		params.require(:question).permit(:question_desc, :difficulty, :category, :correct_answer, incorrect_answers: [] )
	end

	def create_question_params
		params.require(:question).permit(:question_desc, :difficulty, :category, :correct_answer, incorrect_answers: [] )
	end

end