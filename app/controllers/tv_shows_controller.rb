# frozen_string_literal: true

class TvShowsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def index
    render json: current_user.tv_shows.includes(:episodes).all
  end

  def show
    render json: tv_show
  end

  def create
    tv_show_object = current_user.tv_shows.new(tv_show_params)
    if tv_show_object.save
      render json: tv_show_object
    else
      json_errors_for(tv_show_object)
    end
  end

  def update
    if tv_show.update(tv_show_params)
      render json: tv_show
    else
      json_errors_for(tv_show)
    end
  end

  def destroy
    form = TvShowDestroyForm.new(tv_show: tv_show)
    if form.destroy
      render json: form.tv_show
    else
      json_errors_for(form)
    end
  end

  private

  def tv_show_params
    params.require(:tv_show).permit(:title)
  end

  def tv_show
    @tv_show ||= current_user.tv_shows.find(params[:id])
  end
end
