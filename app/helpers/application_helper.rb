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
end
