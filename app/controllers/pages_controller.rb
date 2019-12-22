class PagesController < ApplicationController

  def index
    @pages = Page.order(id: :desc)
    render json: PageSerializer.new(@pages).serialized_json, include: "**"
  end

  def create
    page = Page.create(create_page_params)
    render json: {
      id: page.id,
      user_id: page.user_id,
      page_name: page.page_name,
    }
  end

private

  def create_page_params
    params.permit(:id, :user_id, :page_name)
  end

end
