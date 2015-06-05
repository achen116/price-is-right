ball_pit = { name: "bounce house", description: "Magic Castle commercial inflatable ball pit bounce house", price: 2_340 }
Item.create(ball_pit)

bike = { name: "bike rental", description: "Hourly rental for a tandem bike in Venice Beach, LA", price: 13 }
Item.create(bike)

robot_dog = { name: "robot", description: "Hasbro Intelligent Robotic Dog", price: 69 }
Item.create(robot_dog)

canoe_kit = { name: "canoe kit", description: "19 foot build Your Own Canoe Kit", price: 2_195 }
Item.create(canoe_kit)

motorcycle = { name: "motorcycle", description: "Custom Harley Davidson Sportster, above-averagehh", price: 25_000 }
Item.create(motorcycle)

dog = { name: "dollface dog", description: "Dollface chihuahua or pug puppy", price: 2_000 }
Item.create(dog)

cruise = { name: "alaska cruise", description: "Princess 11 day Alaskan cruise from San Francisco (balcony suite)", price: 2_025 }
Item.create(cruise)

selfie_stick = { name: "selfie stick", description: "A selfie stick accessory for cellphone camera", price: 20 }
Item.create(selfie_stick)

drone = { name: "drone", description: "QuadroCopter Drone with HD video camera", price: 1100 }
Item.create(drone)

skates = { name: "skates", description: "Roller Derby AERIO Q-60 women's inline skates", price: 60 }
Item.create(skates)

back_scratcher = { name: "back scratcher", description: "body back buddy classic", price: 35 }
Item.create(back_scratcher)

iphone = { name: "iphone 6", description: "iphone 6 unlocked iPhone6 Plus 5.5 inch display 64GB storage (no telecom rebate)", price: 849 }
Item.create(iphone)

hat = { name: "hat", description: "Go Warriors Hat with Puff Ball", price: 24 }
Item.create(hat)

marisa = { name: "Marisa" }
marisas_bid = { bid: 1500, item_id: 1, contestant_id: 1 }

Item.create(canoe_kit)
Contestant.create(marisa)
Bid.create(marisas_bid)
