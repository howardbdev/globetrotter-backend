class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  #
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    #render json: @user
    # json_string = MovieSerializer.new(movie).serialized_json
    user_json = UserSerializer.new(@user).serialized_json
    render json: user_json
  end

  # POST /users
  def create
    @user = User.new(user_params)
    @location =  Location.find_or_create_by(city: params[:user][:hometown][:city], state: params[:user][:hometown][:state], country: params[:user][:hometown][:country])

    @user.hometown = @location
    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :username, :password)
    end
end
