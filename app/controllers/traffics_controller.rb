class TrafficsController < ApplicationController

	def index
		@traffics = Traffic.order(id: :desc).limit(100)
		render json: TrafficSerializer.new(@traffics).serialized_json, include: "**"
	end

  def create
    traffic = Traffic.create(create_traffic_params)
      render json: {
                    id: traffic.id,
                    user_id: traffic.user_id,
					          interaction: traffic.interaction,
					          element: traffic.element,
                   }
  end

  private

  def create_traffic_params
    params.permit(:id, :user_id, :interaction, :element)
  end

end
