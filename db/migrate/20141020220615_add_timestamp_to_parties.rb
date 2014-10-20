class AddTimestampToParties < ActiveRecord::Migration
  def change
  	add_column(:parties, :created_at, :datetime)
    add_column(:parties, :updated_at, :datetime)
  end
end
