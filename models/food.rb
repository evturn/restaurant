class Food < ActiveRecord::Base
	has_many(:foods)
end