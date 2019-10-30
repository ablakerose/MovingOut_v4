class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.integer :user_id
      t.string :store_name

      t.timestamps
    end
  end
end
