class RemoveUsersidColumnAndAddUseridColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :users_id , :integer
    add_reference :tasks, :user 
  end
end
