class RemoveColumnFromItems < ActiveRecord::Migration
  def change
    remove_foreign_key :items, :checklists
  end
end
