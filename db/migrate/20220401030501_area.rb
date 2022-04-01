class Area < ActiveRecord::Migration[7.0]
  def change
    rename_table:area_vets,:area
  end
end
