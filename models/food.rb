class Food < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_many(:orders)
	has_many(:parties, :through => :orders)
	def to_s
    name? ? "You ordered: #{name}" : "I don't have a name ;("
  end
end