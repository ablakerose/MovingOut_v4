class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :item_id
      t.float :offer_price

      t.timestamps
    end
  end
end
