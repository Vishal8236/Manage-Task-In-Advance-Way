module ApplicationHelper
	def total_task
		Task.all.count
	end

	def this_weak_task
		current_user.tasks.where('task_day >= ?', 1.week.ago).count
	end
	
	def task_uncomplete
		current_user.tasks.where(task_status: false).count
	end

	def task_completed
		current_user.tasks.where(task_status: true).count
	end

	def show_edit_task_day(day_date)
		# byebug
		date = Date.today
		if day_date == date.to_s
			return "Today"
		elsif day_date == (date+1).to_s
			return "Tomorrow"
		elsif day_date == (date+2).to_s
			return "Day After Tomorrow"
	
		end
	end
	
end
