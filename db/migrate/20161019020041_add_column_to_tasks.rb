class AddColumnToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :checklist, index: true
  end
end
