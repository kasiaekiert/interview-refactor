# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def json_errors_for(object, status = 422)
    render json: { errors: object.errors.full_messages }, status: status
  end
end
