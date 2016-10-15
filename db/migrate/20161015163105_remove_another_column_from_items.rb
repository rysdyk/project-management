class RemoveAnotherColumnFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :checklist_id
  end
end
