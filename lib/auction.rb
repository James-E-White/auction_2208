class Auction
  attr_reader :items,
              :bids
  def initialize
    @items = []
    @bids = {}
  end

  def add_item(item)
    @items << item
  end

  def item_names
    items.map do
      |item| item.name
    end
  end

  def unpopular_items
    unpopluar_itmes = @items.find_all do
      |item| item.bids.empty?
    end
  end

  def potential_revenue
    @items.sum do
      |item| item.current_high_bid.to_i
    end
  end

  def bidders
    bidders = []
    @items.each do |item|
      require "pry";binding.pry
     @items.bids.list do |attendee, bid|
       bidders << attendee.names
   end
  end
 end
end
