class Controller
  def initialize
    @command = ARGV.shift
    @contestant = ARGV.shift
    @bid = ARGV[0]
    @item = ARGV[1..-1].join(" ")
  end

  def run
    puts @item
    case @command
      when "bid"
        puts "Entered bid case!"
        item = Item.create( { name: @item } )
        new_contestant = Contestant.create( { name: @contestant })
        Bid.create({ bid: @bid, contestant_id: new_contestant.id, item_id: item.id })
    end
  end
end
