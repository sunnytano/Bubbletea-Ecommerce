class Api::V1::StoresController < ApplicationController
    before_action :get_store, only: [:show, :update, :destroy]

    def index 
        @stores = Store.all 
        render json: @stores
    end 

    def create 
        byebug
        @store = Store.create(store_params)
        render json: @store
    end 

    def show
        # @store = Store.find(params[:id])
        render json: @store
    end 

    def update
        @store.update(drink_params)
        render json: @store
    end 

    def destroy
        @store = Store.destroy(params[:id])
        render json: @store

    end 

private

    def get_store
        @store = Store.find(params[:id])
    end 

    def store_params
        params.require(:store).permit(:name, :location)
    end 

end
