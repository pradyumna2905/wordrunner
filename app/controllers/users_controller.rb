class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    user = User.create!(email: params.dig('subscriber', 'email'))

    head :no_content
  end

  private

  def create_params
    params.permit(:subscriber)
  end
end
