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

ActiveRecord::Schema[7.0].define(version: 2023_04_08_181325) do
  create_table "departments", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name", null: false
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index_doctors_on_department_id"
  end

  create_table "patient_cards", force: :cascade do |t|
    t.string "diagnosis", null: false
    t.integer "patient_id", null: false
    t.index ["patient_id"], name: "index_patient_cards_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string "name", null: false
    t.integer "doctor_id", null: false
    t.index ["doctor_id"], name: "index_specializations_on_doctor_id"
  end

  add_foreign_key "doctors", "departments"
  add_foreign_key "patient_cards", "patients"
  add_foreign_key "specializations", "doctors"
end
