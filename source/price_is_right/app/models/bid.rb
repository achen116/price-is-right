class Bid < ActiveRecord::Base
  validates :bid, { :presence => true }
  validates :contestant_id, { :uniqueness => true }

  belongs_to :item
  belongs_to :contestant
end
