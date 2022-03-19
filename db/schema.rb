# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_19_030704) do
  create_table "area_vets", force: :cascade do |t|
    t.integer "Area_ID"
    t.string "Area_name"
    t.string "Area_funtion"
    t.string "Area_Manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "Product_ID"
    t.string "Product_Name"
    t.string "product_Utility"
    t.integer "Purchase_Price"
    t.integer "Selling_Price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer "service_ID"
    t.string "Service_Name"
    t.integer "Service_Price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
