class Api::V1::ReviewsController < ApplicationController

    before_action :get_review, only: [:show, :update, :destroy]

    def index 
        @reviews = Review.all 
        render json: @reviews
    end 

    def new
        @review = Review.new
        render json: @review
    end 

    def create
        @review = Review.create(review_params)
        render json: @review
    end 

    def show
        # @review = Review.find(params[:id])
        render json: @review
    end 

    def update
        @review.update(review_params)
        render json: @review
    end 

    def destroy
        @review = Review.destroy(params[:id])
        render json: @review

    end 

private

    def get_review
        @review = Review.find(params[:id])
    end 

    def review_params
        params.require(:review).permit(:content, :user_id, :drink_id)
    end 

end
