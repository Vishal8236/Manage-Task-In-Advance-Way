module ApplicationHelper
	def total_task
		current_user.tasks.all.count
	end

	# day task analysis
	def today_task
		current_user.tasks.where('task_day = ?', (Date.today).to_s ).count
	end
	
	def today_task_uncomplete
		current_user.tasks.where(["task_day = ? and task_status = ? ", (Date.today).to_s , false]).count
	end

	def today_task_completed
		current_user.tasks.where(["task_day = ? and task_status = ? ", (Date.today).to_s , true]).count
	end
	
	# week task analysis
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
