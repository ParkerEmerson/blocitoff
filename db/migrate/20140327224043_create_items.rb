class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.datetime :completed_at
      t.references :todo



      t.timestamps
    end
    add_index :items, :todo_id
  end
end
