# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

# module MyModule
#     class Store; end
# end
# c = Store::Store.new
# require 'pry'

def bubble_response

    response = RestClient::Request.execute(
    method: :get,
    url: "https://api.yelp.com/v3/businesses/search?term=bubble+tea&latitude=40.712776&longitude=-74.005974",
    headers: {"Authorization": 'Bearer 0ANalDJJJyvyJ_sA9ZQ4NOo9bqjgMFtjSQCg0Sl2y7bx0rYpHihyVnyJy9Uq-_TpoLMId6lBsPb8qrTD30hJFMyyt0xm8vO0gMRwwuLxvIgJFzGNnEW40Ll32GYCXXYx'}
    )
    
        puts response
        ["businesses"][0]["alias"]
    
        @response = JSON.parse(response)
        
        # puts Store.new
        @response["businesses"].each do |store|
            # if store["alias"] 
            #    puts "Store.new"
            Store.create(name: store["alias"], location: store["location"]["city"])
            puts store["alias"]
            # end
        end 
    
    end 

# Store.destroy_all
# Drink.destroy_all
# Review.destroy_all
# User.destroy_all

# store1 = Store.create(name: "Boba Guys", location: "23 Clinton St New York 10002")
# store2 = Store.create(name: "Tea and Milk ", location: "32-02 34th Avenue Astoria 11106")
# store3 = Store.create(name: "Gong Cha ", location: "72 Bayard St New York 10013")
# store4 = Store.create(name: "Yaya Tea ", location: "206 Grand St, New York, NY 10013")

# store1 = Store.create(name: "Boba Guys", location: "23 Clinton St New York 10002")
# store2 = Store.create(name: "Tea and Milk ", location: "32-02 34th Avenue Astoria 11106")
# store3 = Store.create(name: "Gong Cha ", location: "72 Bayard St New York 10013")
# store4 = Store.create(name: "Yaya Tea ", location: "206 Grand St, New York, NY 10013")

# d1 = Drink.create(drink_name: "Classic Black", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3, store: store1)
# d2 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, store: store1)
# d3 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, store: store1)
# d4 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10, store: store1)
# d5 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25, store: store1)
# d6 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store1)
# d7 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store1)
# d8 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9, store: store1)

# d9 = Drink.create(drink_name: "TESTING TO SEE IF BOBA GUYS WORK", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3, store: store2)
# d10 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, store: store2)
# d11 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, store: store2)
# d12 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10, store: store2)
# d121 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25, store: store2)
# d122 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store2)
# d123 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store2)
# d124 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9, store: store2)

# d13 = Drink.create(drink_name: "TESTING TO SEE IF GONCHA WORKS", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3, store: store3)
# d14 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, store: store3)
# d15 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, store: store3)
# d16 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10, store: store3)
# d17 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25, store: store3)
# d18 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store3)
# d19 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store3)
# d20 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9, store: store3)

# d21 = Drink.create(drink_name: "TESTING TO SEE IF YAYA WORKS", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3, store: store4)
# d22 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, store: store4)
# d23 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, store: store4)
# d24 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10, store: store4)
# d25 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25, store: store4)
# d26 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store4)
# d27 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store4)
# d28 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9, store: store4)

# d1 = Drink.create(drink_name: "Classic Black", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3, store: store1)
# d2 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, store: store1)
# d3 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, store: store1)
# d4 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10, store: store1)
# d5 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25, store: store1)
# d6 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store1)
# d7 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, store: store1)
# d8 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9, store: store1)

# d9 = Drink.create(drink_name: "TESTING TO SEE IF BOBA GUYS WORK", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3)
# d10 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, user_id: 1)
# d11 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, user_id: 2)
# d12 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10)
# d121 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25)
# d122 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15)
# d123 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15)
# d124 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9)

# d13 = Drink.create(drink_name: "TESTING TO SEE IF GONCHA WORKS", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3)
# d14 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1)
# d15 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10)
# d16 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10)
# d17 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25)
# d18 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15)
# d19 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15)
# d20 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9)

# d21 = Drink.create(drink_name: "TESTING TO SEE IF YAYA WORKS", description: "Black milk tea made with Tea People premium loose leaf tea and brown sugar based simple syrup. The staple of boba milk tea. Best with Straus Family organic milk!", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0005104c7bc44a3c8a68/1537998862519/Screen+Shot+2018-09-26+at+2.52.49+PM.png?format=1000w", likes: 3)
# d22 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1)
# d23 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10)
# d24 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10)
# d25 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25)
# d26 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15)
# d27 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15)
# d28 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9)


# # Review.create(user: "Susan", content: "I love it!", drink: d1)
# # Review.create(user: "Pikachu", content: "It was not my favorite.", drink: d2)
# # Review.create(user: "Jiggly Puff", content: "It was just okay.", drink: d3)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d4)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d5)
# # Review.create(user: "Susan", content: "I love it!", drink: d6)
# # Review.create(user: "Pikachu", content: "It was not my favorite.", drink: d7)
# # Review.create(user: "Jiggly Puff", content: "It was just okay.", drink: d8)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d9)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d10)
# # Review.create(user: "Susan", content: "I love it!", drink: d11)
# # Review.create(user: "Pikachu", content: "It was not my favorite.", drink: d12)
# # Review.create(user: "Jiggly Puff", content: "It was just okay.", drink: d121)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d122)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d123)
# # Review.create(user: "Susan", content: "I love it!", drink: d124)
# # Review.create(user: "Pikachu", content: "It was not my favorite.", drink: d13)
# # Review.create(user: "Jiggly Puff", content: "It was just okay.", drink: d14)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d15)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d16)
# # Review.create(user: "Susan", content: "I love it!", drink: d17)
# # Review.create(user: "Pikachu", content: "It was not my favorite.", drink: d18)
# # Review.create(user: "Jiggly Puff", content: "It was just okay.", drink: d19)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d20)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d21)
# # Review.create(user: "Susan", content: "I love it!", drink: d22)
# # Review.create(user: "Pikachu", content: "It was not my favorite.", drink: d23)
# # Review.create(user: "Jiggly Puff", content: "It was just okay.", drink: d24)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d25)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d26)
# # Review.create(user: "Arnold", content: "I dance a little after drinking this.", drink: d27)
# # Review.create(user: "Jake", content: "Yes, more please.", drink: d28)

# r1 = Review.create(content: "I love it!", drink: d1)
# r2 = Review.create(content: "It was not my favorite.", drink: d2)
# r3 = Review.create(content: "It was just okay.", drink: d10, user: u1)
# r4 = Review.create(content: "I dance a little after drinking this.", drink: d11, user: u2)

# Review.create(content: "Yes, more please.", drink: d5)
# Review.create(content: "I love it!", drink: d6)
# Review.create(content: "It was not my favorite.", drink: d7)
# Review.create(content: "It was just okay.", drink: d8)
# Review.create(, content: "I dance a little after drinking this.", drink: d9)
# Review.create(content: "Yes, more please.", drink: d10)
# Review.create( content: "I love it!", drink: d11)
# Review.create(", content: "It was not my favorite.", drink: d12)
# Review.create(Puff", content: "It was just okay.", drink: d121)
# Review.create(, content: "I dance a little after drinking this.", drink: d122)
# Review.create(content: "Yes, more please.", drink: d123)
# Review.create( content: "I love it!", drink: d124)
# Review.create(", content: "It was not my favorite.", drink: d13)
# Review.create(Puff", content: "It was just okay.", drink: d14)
# Review.create(, content: "I dance a little after drinking this.", drink: d15)
# Review.create(content: "Yes, more please.", drink: d16)
# Review.create( content: "I love it!", drink: d17)
# Review.create(", content: "It was not my favorite.", drink: d18)
# Review.create(Puff", content: "It was just okay.", drink: d19)
# Review.create(, content: "I dance a little after drinking this.", drink: d20)
# Review.create(content: "Yes, more please.", drink: d21)
# Review.create( content: "I love it!", drink: d22)
# Review.create(", content: "It was not my favorite.", drink: d23)
# Review.create(Puff", content: "It was just okay.", drink: d24)
# Review.create(, content: "I dance a little after drinking this.", drink: d25)
# Review.create(content: "Yes, more please.", drink: d26)
# Review.create(, content: "I dance a little after drinking this.", drink: d27)
# Review.create(content: "Yes, more please.", drink: d28)

# u1 = User.create(username: "Susan Tan", password: "123456", review_id: 1, drink_id: 1)
# u2 = User.create(username: "POOP Tan", password: "123456", review_id: 12, drink_id: 2)