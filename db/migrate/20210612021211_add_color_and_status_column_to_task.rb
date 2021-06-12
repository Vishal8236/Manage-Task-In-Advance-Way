class AddColorAndStatusColumnToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :task_status, :boolean
    add_column :tasks, :task_color, :string   
  end
end
