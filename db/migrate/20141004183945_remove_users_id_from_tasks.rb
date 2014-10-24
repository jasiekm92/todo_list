class RemoveUsersIdFromTasks < ActiveRecord::Migration
  def down
    remove_column :tasks, :users_id
  end
end
