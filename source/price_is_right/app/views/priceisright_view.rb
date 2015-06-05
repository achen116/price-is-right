module View
  def self.welcome
    puts "Welcome to THE PRICE IS RIGHT!"
  end

  def self.instructions
    puts "We'll show an item, you guess the price!"
  end

  def self.display_item
    puts "Name: #{@item}"
    # puts "Description: #{item.description}"
    # puts "Price: #{@item.price}"
  end

  def self.display_contestant_bids
    puts "Contestant"
    bids = Bid.pluck(:bid)
  end

  def self.entered_bid
    puts "Your bid has been entered!"
  end

  def self.display_winner
    puts "Winner"
  end

  def self.display_loser
    puts " :( :( :( "
  end
end
