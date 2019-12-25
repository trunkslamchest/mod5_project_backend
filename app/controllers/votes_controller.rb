class VotesController < ApplicationController

	def index
		@votes = Vote.order(id: :asc)
		render json: VoteSerializer.new(@votes).serialized_json
	end

	def show
		@vote = Vote.find(params[:id])
		render json: VoteSerializer.new(@vote).serialized_json
	end

	def create
		vote = Vote.create(create_vote_params)
		render json: {
			id: vote.id,
			user_id: vote.user_id,
			question_id: vote.question_id,
			vote_num: vote.vote_num,
		}
	end

	def destroy
		@vote = Vote.find(params[:id])
		@vote.destroy
		render json: @vote
	end

private

	def create_vote_params
		params.require(:vote).permit(:user_id, :question_id, :vote_num)
	end

end
