# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Review.destroy_all
Drink.destroy_all

user1 = User.create(username: "Susan", password_digest: "password")
user2 = User.create(username: "Pocahontas", password_digest: "password")

d1 = Drink.create(drink_name: "Jasmine Green Tea", description: "Green milk tea made with Tea People jasmine green tea blend. Floral and silky, best with Straus Family organic milk, but also tasty with almond milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac0012f9619a64a9ca00f9/1537998870424/Screen+Shot+2018-09-26+at+2.53.46+PM.png?format=1000w", likes: 1, price: 5, quantity: 1, user: user1)
d2 = Drink.create(drink_name: "Lychee Green", description: "A blend of lychee fruit and fragrant green tea. Really great as an iced tea, but still plays (really) well with milk. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5babfffca4222f8352ae82ef/1537998856517/Screen+Shot+2018-09-26+at+2.47.12+PM.png", likes: 10, price: 5, quantity: 1, user: user1)
d3 = Drink.create(drink_name: "Coconut Green", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 10, price: 5, quantity: 1,  user: user1)
d4 = Drink.create(drink_name: "Indian Chai", description: "A tropical blend of real shredded coconut, coconut oil and green tea. A creamy sweet liquor for those with any kind of sweet tooth. We recommend ordering it less sweet.Blended in San Francisco! A mellow chai flavor with the perfect balance of ginger and spice. Best with Straus Family organic milk.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25,price: 5, quantity: 1,  user: user2)
d5 = Drink.create(drink_name: "Muscat Oolong", description: "A strong yet smooth oolong tea perfectly balanced with the fruit flavor of muscat grapes. Tastes like strawberries with milk and sugar. We recommend ordering it less sweet.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, price: 5, quantity: 1,  user: user2)
d6 = Drink.create(drink_name: "Rose Black", description: "Delicate, young rosebuds and petals mixed with the sweet fullness of a Ceylon black tea. This tea has a very strong rose bouquet with its naturally sweet flavor.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, price: 5, quantity: 1,  user: user2)
d7 = Drink.create(drink_name: "Duke of Earl Grey", description: "Our own spin on a timeless classic: a Keemun Black tea base flavored with 100% all-natural Bergamot oil.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 9, price: 5, quantity: 1, user: user2)
d8 = Drink.create(drink_name: "Classic Milk Tea", description: "Delicate, amazing Bubble Milk tea is so good for your soul and the bubbles make you so happy. It is delicious and made with milk and bubbles.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 25,price: 5, quantity: 1,  user: user2)
d9 = Drink.create(drink_name: "Strawberry Tea", description: "Fresh strawberries that are handpicked by your best friend and given to you by Chris Hemsworth.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, price: 5, quantity: 1,  user: user2)
d10 = Drink.create(drink_name: "Blueberry Tea", description: "Blueberries that are plucked from space in into your face.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, price: 5, quantity: 1,  user: user2)
d11 = Drink.create(drink_name: "Apple Green Tean", description: "This apple tea will keep your dentist away and. Fresh from the ketchup farm.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, price: 5, quantity: 1,  user: user2)
d12 = Drink.create(drink_name: "Orange You Glad I Made this Drink Tea", description: "This orange tea is made from fresh squeezed kiwis. Orange you glad I made it.", image: "https://static1.squarespace.com/static/50ce46ece4b01020c34fd52b/5babfffc71c10b381cf6ea2e/5bac000deef1a1acc21a0a68/1537998869819/Screen+Shot+2018-09-26+at+2.53.24+PM.png", likes: 15, price: 5, quantity: 1,  user: user2)


Review.create(content: "THIS IS GREAT", user: user1, drink: d1)
Review.create(content: "OK", user: user2,  drink: d2)

