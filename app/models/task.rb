class Task < ApplicationRecord
	belongs_to :user

	attribute :task_color, :string, default: 'bg-primary text-white'
	attribute :task_status, :boolean, default: false

end

