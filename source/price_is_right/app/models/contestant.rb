class Contestant < ActiveRecord::Base
  validates :name, { :presence => true }
end
