# frozen_string_literal: true

class EpisodesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  delegate :tv_shows, to: :current_user

  def index
    render json: tv_show.episodes
  end

  def show
    render json: episode
  end

  def create
    episode_object = tv_shows.episodes.create!(episode_params)
    render json: episode_object
  end

  def update
    episode.update!(episode_params)
    render json: episode
  end

  def destroy
    episode.destroy!(episode_params)
    render json: episode
  end

  private

  def episode_params
    params.require(:episode).permit(:title, :watched)
  end

  def tv_show
    @tv_show ||= tv_shows.find(params[:tv_show_id])
  end

  def episode
    @episode ||= tv_shows.find(params[:id])
  end
end
