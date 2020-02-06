class TvShowsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def index
    Rails.logger.info "obecny user: #{current_user.id}"
    render json: current_user.tv_shows.includes(:episodes).all
  end

  def show
    render json: tv_show
  end

  def create
    tv_show_object = current_user.tv_shows.create!(tv_show_params)
    render json: tv_show_object
  end

  def update
    tv_show.update!(tv_show_params)
    render json: tv_show
  end

  def destroy
    tv_show.destroy!
    render json: tv_show
  end

  private

  def tv_show_params
    params.require(:tv_show).permit(:title)
    # params.permit(:title)

  end

  def tv_show
    @tv_show ||= current_user.tv_shows.find(params[:id])
  end
end
