class Contestant < ActiveRecord::Base
  validates :name, { :presence => true }

  has_many :bids
  has_many :items, through: :bids
end
