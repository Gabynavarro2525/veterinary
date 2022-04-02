class AddAreaReferenceToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :area, null: false, foreign_key: true
  end
end
