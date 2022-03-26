class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :classification
      t.float :purchase_price
      t.float :selling_price

      t.timestamps
    end
  end
end
