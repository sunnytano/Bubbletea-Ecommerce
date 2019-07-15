class Api::V1::DrinksController < ApplicationController

    before_action :get_drink, only: [:show, :update, :destroy]

    def index 
        @drinks = Drink.all 
        render json: @drinks
    end 

    def show
        # @drink = Drink.find(params[:id])
        render json: @drink
    end 

    def update
        @drink.update(drink_params)
        render json: @drink
    end 

    def destroy
        @drink = Drink.destroy(params[:id])
        render json: @drink

    end 

private

    def get_drink
        @drink = Drink.find(params[:id])
    end 

    def drink_params
        params.require(:drink).permit(:drink_name, :description, :image, :likes, :store_id)
    end 

end
