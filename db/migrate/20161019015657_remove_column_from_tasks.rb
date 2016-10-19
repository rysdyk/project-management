class RemoveColumnFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :checklist_id
  end
end
