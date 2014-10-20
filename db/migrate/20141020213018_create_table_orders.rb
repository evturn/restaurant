class CreateTableOrders < ActiveRecord::Migration
  def change
  	create_table :orders do |t|
  		t.integer :food_id
  		t.integer :party_id

  	end
  end
end
