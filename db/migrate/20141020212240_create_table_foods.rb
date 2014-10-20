class CreateTableFoods < ActiveRecord::Migration
  def change
  		create_table :foods do |t|
  			t.string :name
  			t.integer :price
  		end
  end
end
