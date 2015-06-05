class Controller
  def initialize
    @command = ARGV.shift
    @contestant = ARGV.shift
    @bid = ARGV[0]
    @item = ARGV[1..-1].join(" ")
  end

  def run
    case @command
      when "bid"
        item = Item.find_by(name: @item)
        new_contestant = Contestant.create( { name: @contestant })
        Bid.create({ bid: @bid, contestant_id: new_contestant.id, item_id: item.id })
        View.entered_bid
      when "display"
        View.display_item
    end
  end
end
