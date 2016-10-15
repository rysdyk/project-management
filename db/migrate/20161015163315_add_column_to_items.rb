class AddColumnToItems < ActiveRecord::Migration
  def change
    add_reference :items, :checklist, index: true
  end
end
