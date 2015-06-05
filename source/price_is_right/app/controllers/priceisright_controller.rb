class Controller
  def initialize
    @command = ARGV.shift
  end

  def run
    case @command
      when "welcome"
        View.welcome
      when "bid"
        contestant = ARGV.shift
        bid = ARGV[0]
        item_lookup = ARGV[1..-1].join(" ")

        bidding_item = Item.find_by(name: item_lookup)
        new_contestant = Contestant.create( { name: contestant })
        Bid.create({ bid: bid, contestant_id: new_contestant.id, item_id: bidding_item.id })
        View.entered_bid
      when "display"
        @item = ARGV[0..-1].join(" ")
        View.display(@item)
      when "winner"
        @item = ARGV[0..-1].join(" ")
        View.display_winner(@item)
    end
  end
end
