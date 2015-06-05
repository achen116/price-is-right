class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer  :bid
      t.integer  :item_id
      t.integer  :contestant_id

      t.timestamps
    end
  end
end
