class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :ok
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

  def get_current_user
    if logged_in?
      render json: UserSerializer.new(current_user)
    else
      render json: {
        error: "No one logged in"
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "successfully logged out"
    }, status: :ok
  end

end
