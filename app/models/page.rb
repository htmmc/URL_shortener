class Page < ActiveRecord::Base
	def self.most_visited
		Page.order("visits DESC").limit(10)
	end 
end
