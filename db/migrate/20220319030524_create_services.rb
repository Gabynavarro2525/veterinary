class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :service_ID
      t.string :Service_Name
      t.integer :Service_Price

      t.timestamps
    end
  end
end
