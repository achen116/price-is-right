module View
  def self.welcome
    WelcomeView.welcome
  end

  def self.instructions
    puts "We'll show an item, you guess the price!"
  end

  def self.display(item_name)
    item = Item.find_by(name: item_name)
    item_bids = Bid.where(item_id: item.id)
    puts "Name: #{item.name.upcase}"
    puts "Description: #{item.description}"
    puts "Price: $#{item.price}"
    puts "*" * 20

    contestant_bids = []
    item_bids.each do |bid|
      contestant_bids << [Contestant.find(bid.contestant_id).name, bid.bid]
    end

    contestant_bids.each do |array|
      puts "Contestant: #{array[0].upcase} || Bid: $#{array[1]}"
    end
  end

  def self.entered_bid
    puts "Your bid has been entered!"
  end

  def self.display_winner(item_name)
    item = Item.find_by(name: item_name)
    item_bids = Bid.where(item_id: item.id)
    contestant_bids = []
    item_bids.each do |bid|
      contestant_bids << bid.bid
    end
    contestant_bids = contestant_bids.sort
    contestant_bids
    winning_bid = contestant_bids.bsearch { |bid| bid >= item.price }
    winning_bid_object = Bid.find_by(bid: winning_bid)
    winner_name = Contestant.find_by(id: winning_bid_object.contestant_id).name
    puts winner_name.upcase + " is the......"
    sleep(1)
    puts "
__          ___                       _
 \\ \\        / (_)                     | |
  \\ \\  /\\  / / _ _ __  _ __   ___ _ __| |
   \\ \\/  \\/ / | | '_ \\| '_ \\ / _ \\ '__| |
    \\  /\\  /  | | | | | | | |  __/ |  |_|
     \\/  \\/   |_|_| |_|_| |_|\\___|_|  (_)


    "
    sleep(3)
    WelcomeView.real_winner
  end

  def self.display_loser
    puts " :( :( :( "
  end
end
