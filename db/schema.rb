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

ActiveRecord::Schema[7.0].define(version: 2022_09_07_044014) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "requirement"
    t.integer "workload"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.date "enrollment_date"
    t.bigint "grade_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_enrollments_on_grade_id"
    t.index ["student_id"], name: "index_enrollments_on_student_id"
  end

  create_table "grades", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "workload"
    t.bigint "instructor_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_grades_on_course_id"
    t.index ["instructor_id"], name: "index_grades_on_instructor_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "hour_value"
    t.text "certificates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "cpf"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "enrollments", "grades"
  add_foreign_key "enrollments", "students"
  add_foreign_key "grades", "courses"
  add_foreign_key "grades", "instructors"
end
