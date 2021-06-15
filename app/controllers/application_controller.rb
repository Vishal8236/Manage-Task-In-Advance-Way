class ApplicationController < ActionController::Base
	helper :all

	def total_task
		Task.all
	end
	
end
