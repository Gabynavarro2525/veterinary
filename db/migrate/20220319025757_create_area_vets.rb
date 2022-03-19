class CreateAreaVets < ActiveRecord::Migration[7.0]
  def change
    create_table :area_vets do |t|
      t.integer :Area_ID
      t.string :Area_name
      t.string :Area_funtion
      t.string :Area_Manager

      t.timestamps
    end
  end
end
