canoe_kit = { name: "Build Your Own Canoe Kit", price: 2_195 }
marisa = { name: "Marisa" }
marisas_bid = { bid: 1500, item_id: 1, contestant_id: 1 }

Item.create(canoe_kit)
Contestant.create(marisa)
Bid.create(marisas_bid)
