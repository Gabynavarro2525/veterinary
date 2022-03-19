class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :Product_ID
      t.string :Product_Name
      t.string :product_Utility
      t.integer :Purchase_Price
      t.integer :Selling_Price

      t.timestamps
    end
  end
end
