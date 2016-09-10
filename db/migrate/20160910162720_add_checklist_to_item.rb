class AddChecklistToItem < ActiveRecord::Migration
  def change
    add_reference :items, :checklist, index: true
    add_foreign_key :items, :checklists
  end
end
