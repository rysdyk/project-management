class CreateChecklistsTable < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :title
      t.text :description
    end
  end
end
