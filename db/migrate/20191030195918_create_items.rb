class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :store_id
      t.float :list_price
      t.boolean :sold
      t.string :item_name

      t.timestamps
    end
  end
end
