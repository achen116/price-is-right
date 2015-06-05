class Controller
  def initialize
    @command = ARGV.shift
    @contestant = ARGV.shift
    @bid = ARGV[0]
  end

  def run
    case command
      when "bid"

    end
  end
end
