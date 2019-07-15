class Api::V1::UsersController < ApplicationController

    before_action :get_user, only: [:show, :update, :destroy]

    def index 
        @users = User.all 
        render json: @users 
    end 

    def new
        @user = User.new
        render json: @user
    end 

    def create
        @user = User.create(user_params)
        render json: @user
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end 

    def update
        @user.update(user_params)
        render json: @user
    end 

    def destroy
        @user = User.destroy(params[:id])
        render json: @user

    end 

private

    def get_user
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:username, :password, :review_id, :drink_id)
    end 

end
