class UsersController < ApplicationController

	def index
		@users = User.order(id: :asc)
		render json: UsersSerializer.new(@users).serialized_json
	end

  def show
    @user = User.find(params[:id])
		render json: UsersSerializer.new(@user).serialized_json
  end

  def update
    current_user = User.find(params[:id])
    user_update = current_user.update(update_user_params)
    if current_user.valid?
      render json: {
                    token: token(current_user.id),
                    user_id: current_user.id,
                    user_name: current_user.user_name,
                    email: current_user.email,
                    first_name: current_user.first_name,
                    last_name: current_user.last_name,
                    gender: current_user.gender,
                    birth_day: current_user.birth_day,
                    birth_month: current_user.birth_month,
                    birth_year: current_user.birth_year,
                    house_number: current_user.house_number,
                    street_name: current_user.street_name,
                    city_town: current_user.city_town,
                    state: current_user.state,
                    zip_code: current_user.zip_code
                   }
    else
      render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create
    user = User.create(create_user_params)
    if user.valid?
      render json: {
                    token: token(user.id),
                    user_id: user.id,
                    user_name: user.user_name,
                    email: user.email,
                    first_name: user.first_name,
                    last_name: user.last_name,
                    gender: user.gender,
                    birth_day: user.birth_day,
                    birth_month: user.birth_month,
                    birth_year: user.birth_year,
                    house_number: user.house_number,
                    street_name: user.street_name,
                    city_town: user.city_town,
                    state: user.state,
                    zip_code: user.zip_code
                   }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
		@user = User.find(params[:id])

		@user.destroy

		render json: @user
	end

  private

  def update_user_params
    params.required(:user).permit(:user_name, :email, :first_name, :last_name, :gender, :birth_day, :birth_month, :birth_year, :house_number, :street_name, :city_town, :state, :zip_code)
  end

  def create_user_params
    params.permit(:user_name, :password, :email, :first_name, :last_name, :gender, :birth_day, :birth_month, :birth_year, :house_number, :street_name, :city_town, :state, :zip_code)
  end

end
