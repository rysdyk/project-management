class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :step, :string
    add_column :items, :completed, :boolean
  end
end
