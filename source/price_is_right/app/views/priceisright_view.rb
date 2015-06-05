module View
  def welcome
    puts "Welcome to THE PRICE IS RIGHT!"
  end

  def instructions
    puts "We'll show an item, you guess the price!"
  end

  def display_item
    puts "Item"
  end

  def display
    puts "Contestant"
    bids = Bid.pluck(:bid)
  end

  def display_winner
    puts "Winner"
  end

  def display_loser
    puts " :( :( :( "
  end
end
