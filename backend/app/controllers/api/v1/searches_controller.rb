class Api::V1::SearchesController < ApplicationController

    def show
        search_term = params['q'].capitalize

        response = RestClient.get("https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.search.collection&access_token=YOURTOKENHERE=#{search_term}&page=1&per_page=100")

    end
    
private

    # def get_review
    #     @review = Review.find(params[:id])
    # end 

    # def review_params
    #     params.require(:review).permit(:content, :user, :drink_id)
    # end 

end
