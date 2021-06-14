class Task < ApplicationRecord
	belongs_to :user

	def self.get_all_filter_tasks
		Task.all.each do |task|
			task
		end
	end
	
end

