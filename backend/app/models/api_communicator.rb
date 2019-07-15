require 'httparty'
    class API
        
        def request 

        url = "https://cors-anywhere.herokuapp.com/https://api.yelp.com/v3/businesses/search?term=bubble+tea&latitude=40.712776&longitude=-74.005974"
        response = HTTParty.get(url)
        response.parsed_response
        end 

    end 

