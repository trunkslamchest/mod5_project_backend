class AnswersController < ApplicationController

	def index
		@answers = Answer.order(id: :asc)
		render json: AnswerSerializer.new(@answers).serialized_json
	end

	def show
		@answer = Answer.find(params[:id])
		render json: AnswerSerializer.new(@answer).serialized_json
	end

	def create
		answer = Answer.create(create_answer_params)
		render json: {
			id: answer.id,
			user_id: answer.user_id,
			question_id: answer.question_id,
			user_answer: answer.user_answer,
			user_result: answer.user_result
		}
	end

	def destroy
		@answer = Answer.find(params[:id])
		@answer.destroy
		render json: @answer
	end

private

	def create_answer_params
		params.require(:answer).permit(:user_id, :question_id, :user_answer, :user_result)
	end

end
