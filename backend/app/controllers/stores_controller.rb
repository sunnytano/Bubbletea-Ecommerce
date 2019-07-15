class StoresController < ApplicationController

    before_action :get_store, only: [:show, :update, :destroy]

    def index 
        @stores = Store.all 
        render json: @stores
    end 

    def show
        # @store = Store.find(params[:id])
        render json: @store
    end 

    def update
        @store.update(store_params)
        render json: @store
    end 

    def destroy
        @store = Store.destroy(params[:id])
        render json: @store

    end 

private

    def get_drink
        @store = Store.find(params[:id])
    end 

    def store_params
        params.require(:store).permit(:name, :address)
    end 


end
