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

ActiveRecord::Schema.define(version: 2021_03_01_202655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pythons", force: :cascade do |t|
    t.string "code"
    t.string "documentation_url"
    t.bigint "use_case_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["use_case_id"], name: "index_pythons_on_use_case_id"
  end

  create_table "rubies", force: :cascade do |t|
    t.string "code"
    t.string "documentation_url"
    t.bigint "use_case_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["use_case_id"], name: "index_rubies_on_use_case_id"
  end

  create_table "use_cases", force: :cascade do |t|
    t.text "description"
    t.string "title"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pythons", "use_cases"
  add_foreign_key "rubies", "use_cases"
end
