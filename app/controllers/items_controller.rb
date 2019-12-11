class ItemsController < ApplicationController

#   def index
#     if client_has_valid_token?
#       snacks = Snack.all
#       render json: snacks
#     else
#       render json: { go_away: true }, status: :unauthorized
#     end
#   end

	def index
		@items = Item.all
		render json: ItemSerializer.new(@items).serialized_json, include: "**"
	end

	def show
		@item = Item.find(params[:id])
		render json: ItemSerializer.new(@item).serialized_json, include: "**"
	end

end
