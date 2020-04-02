# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_02_182353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "gender"
    t.integer "age"
    t.string "house_name"
    t.integer "ward"
    t.string "landmark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "panchayat_id"
    t.index ["panchayat_id"], name: "index_contacts_on_panchayat_id"
    t.index ["phone"], name: "index_contacts_on_phone", unique: true
  end

  create_table "medical_reqs", force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.boolean "need_medicines"
    t.boolean "fullfilled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "requirement_type"
    t.string "other_needs"
    t.index ["contact_id"], name: "index_medical_reqs_on_contact_id"
  end

  create_table "non_medical_reqs", force: :cascade do |t|
    t.bigint "contact_id", null: false
    t.boolean "need_food"
    t.boolean "fullfilled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "requirement_type"
    t.string "other_needs"
    t.index ["contact_id"], name: "index_non_medical_reqs_on_contact_id"
  end

  create_table "panchayats", force: :cascade do |t|
    t.string "name"
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
    t.string "role"
    t.bigint "panchayat_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["panchayat_id"], name: "index_users_on_panchayat_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "medical_reqs", "contacts"
  add_foreign_key "non_medical_reqs", "contacts"
end
