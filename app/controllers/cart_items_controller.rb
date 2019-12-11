class CartItemsController < ApplicationController

	def index
		# @cart = CartItem.all
		@cart = CartItem.order(id: :desc)
		render json: CartItemsSerializer.new(@cart).serialized_json, include: "**"
	end

	def show
		@cart_item = CartItem.find(params[:id])
		# .order(id: :desc)

		render json: @cart_item
	end

	def create
		@cart = CartItem.create(cart_item_params)

		if @cart.valid?
			render json: @cart
		else
			render json: {errors: @cart.errors.full_messages}, status: 401
		end
	end

	def update
		@cart_item = CartItem.find(params[:id])

		@cart_item.update(cart_item_params)

		render json: @cart_item
	end

	def destroy
		@cart_item = CartItem.find(params[:id])

		@cart_item.destroy

		render json: @cart_item
	end

private

	def cart_item_params
		params.permit(:user_id, :item_id, :cart_quantity)
	end

end
