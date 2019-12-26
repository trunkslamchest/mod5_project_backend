class CommentsController < ApplicationController

	def index
		# byebug
		@comments = Comment.order(id: :asc)
		render json: CommentSerializer.new(@comments).serialized_json
	end

	def show
		@comment = Comment.find(params[:id])
		render json: CommentSerializer.new(@comment).serialized_json
	end

	def create
		comment = Comment.create(create_comment_params)
		render json: {
			id: comment.id,
			user_id: comment.user_id,
			user_name: comment.user_name,
			question_id: comment.question_id,
			comment: comment.comment_text,
		}
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		render json: @comment
	end

private

	def create_comment_params
		params.require(:comment).permit(:user_id, :user_name, :question_id, :comment_text)
	end

end
