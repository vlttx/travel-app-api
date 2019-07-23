class Api::V1::UsersController < ApplicationController
  wrap_parameters :user, include: [:name, :username, :password, :password_confirmation, :hometown]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user, status: 200
  end

  # POST /users
  def create
    @user = User.create(user_params)
    @location = Location.find_or_create_by(city: params[:hometown][:city], state: params[:hometown][:state], country: params[:hometown][:country])
    @user.hometown_id = @location.id
    if @user.save
      session[:user_id] = @user.id
      render json: @user, status: 200
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
      params.require(:user).permit(:name, :username, :password, :password_confirmation, :hometown)
    end
end
