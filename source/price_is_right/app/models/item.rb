class Item < ActiveRecord::Base
  validates :name, :price, { :presence => true }

  has_many :bids
  has_many :contestants, through: :bids
end
