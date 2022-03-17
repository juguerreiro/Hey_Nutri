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

ActiveRecord::Schema.define(version: 2022_03_17_200917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carbs", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "sugar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cookers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "phone"
  end

  create_table "fibras", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.bigint "protein_id", null: false
    t.bigint "carb_id", null: false
    t.bigint "fibra_id", null: false
    t.bigint "user_id", null: false
    t.integer "calories_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carb_id"], name: "index_meals_on_carb_id"
    t.index ["fibra_id"], name: "index_meals_on_fibra_id"
    t.index ["protein_id"], name: "index_meals_on_protein_id"
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "proteins", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "iron"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comorbidity"
    t.float "height"
    t.float "weight"
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "meals", "carbs"
  add_foreign_key "meals", "fibras"
  add_foreign_key "meals", "proteins"
  add_foreign_key "meals", "users"
end
