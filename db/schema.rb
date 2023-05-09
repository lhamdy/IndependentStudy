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

ActiveRecord::Schema[7.0].define(version: 2023_05_09_164010) do
  create_table "fall_courses", force: :cascade do |t|
    t.text "cid"
    t.text "title"
    t.text "instructor"
    t.integer "credits"
    t.text "prereqs"
    t.text "description"
    t.text "language"
    t.text "restrictions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "previous_grade_data", force: :cascade do |t|
    t.integer "sid"
    t.string "class_"
    t.string "subject"
    t.string "catalog"
    t.string "title"
    t.integer "units"
    t.string "grading_basis"
    t.string "grade"
    t.integer "term"
    t.string "roster_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cid"
  end

  create_table "students", force: :cascade do |t|
    t.integer "sid"
    t.text "cid"
    t.string "grade"
    t.text "title"
    t.integer "term"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
