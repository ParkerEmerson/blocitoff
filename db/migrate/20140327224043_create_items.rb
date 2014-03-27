class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :items, :post_id
  end
end
