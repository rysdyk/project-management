class AddItemsToChecklist < ActiveRecord::Migration
  def change
    add_column :checklists, :items, :has_many
  end
end
