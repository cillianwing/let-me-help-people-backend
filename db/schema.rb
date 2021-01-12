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

ActiveRecord::Schema.define(version: 2021_01_12_215006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.text "course_number"
    t.text "course_name"
    t.text "professor"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "days", default: [], array: true
    t.decimal "grade"
    t.text "semester"
    t.text "year"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "extra_curriculars", force: :cascade do |t|
    t.text "title"
    t.text "group"
    t.text "duties", default: [], array: true
    t.date "start"
    t.date "end"
    t.integer "hours"
    t.text "contact_name"
    t.text "contact_phone"
    t.text "contact_email"
    t.boolean "paid"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birth_day"
    t.text "location"
    t.text "description"
    t.boolean "traditional"
    t.text "hobbies", default: [], array: true
    t.text "interests", default: [], array: true
  end

  create_table "work_experiences", force: :cascade do |t|
    t.text "title"
    t.text "company"
    t.text "company_location"
    t.text "duties", default: [], array: true
    t.date "start"
    t.date "end"
  end

  add_foreign_key "courses", "users"
end
