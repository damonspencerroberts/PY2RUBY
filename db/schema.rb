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

ActiveRecord::Schema.define(version: 2021_03_06_174048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "url"
    t.string "image_url"
    t.string "time_length"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.string "description"
  end

  create_table "pythons", force: :cascade do |t|
    t.string "documentation_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code", default: [], array: true
  end

  create_table "rubies", force: :cascade do |t|
    t.string "documentation_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code", default: [], array: true
  end

  create_table "use_cases", force: :cascade do |t|
    t.text "description"
    t.string "title"
    t.string "category"
    t.bigint "python_id"
    t.bigint "ruby_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "output"
    t.boolean "popular", default: false
    t.index ["python_id"], name: "index_use_cases_on_python_id"
    t.index ["ruby_id"], name: "index_use_cases_on_ruby_id"
  end

end
