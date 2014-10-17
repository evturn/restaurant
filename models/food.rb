class Food < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_many(:orders)
	has_many(:parties, :through => :orders)
	
	def to_s
    name? ? "Item: #{name}" : "You haven't ordered."
  end

end