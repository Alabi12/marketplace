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

ActiveRecord::Schema[8.0].define(version: 2025_07_19_001028) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "serviceable_type", null: false
    t.bigint "serviceable_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["serviceable_type", "serviceable_id"], name: "index_appointments_on_serviceable"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "business_consulting_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "expertise"
    t.text "qualifications"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_business_consulting_profiles_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulting_services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "business_consulting_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_consulting_profile_id"], name: "index_consulting_services_on_business_consulting_profile_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.bigint "category_id", null: false
    t.bigint "store_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "professional_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "bio"
    t.text "specialties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_professional_profiles_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "duration"
    t.decimal "price"
    t.bigint "professional_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professional_profile_id"], name: "index_services_on_professional_profile_id"
  end

  create_table "skill_services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "skilled_professional_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skilled_professional_profile_id"], name: "index_skill_services_on_skilled_professional_profile_id"
  end

  create_table "skilled_professional_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "skill_type"
    t.text "experience"
    t.string "portfolio_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_skilled_professional_profiles_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "users"
  add_foreign_key "business_consulting_profiles", "users"
  add_foreign_key "consulting_services", "business_consulting_profiles"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "stores"
  add_foreign_key "professional_profiles", "users"
  add_foreign_key "services", "professional_profiles"
  add_foreign_key "skill_services", "skilled_professional_profiles"
  add_foreign_key "skilled_professional_profiles", "users"
  add_foreign_key "stores", "users"
end
