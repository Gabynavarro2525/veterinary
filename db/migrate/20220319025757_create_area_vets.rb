class CreateAreaVets < ActiveRecord::Migration[7.0]
  def change
    create_table :area_vets do |t|
      t.string :name
      t.string :function
      t.string :manager

      t.timestamps
    end
  end
end
