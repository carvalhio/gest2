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

ActiveRecord::Schema[7.2].define(version: 2025_02_24_165503) do
  create_table "high_school_subjects", force: :cascade do |t|
    t.integer "high_school_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["high_school_id"], name: "index_high_school_subjects_on_high_school_id"
    t.index ["subject_id"], name: "index_high_school_subjects_on_subject_id"
  end

  create_table "high_schools", force: :cascade do |t|
    t.string "stage"
    t.string "period"
    t.date "date"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_high_schools_on_subject_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "grade"
    t.string "level"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "order"
    t.string "interger"
    t.string "identifier", limit: 10
    t.string "shift"
    t.integer "qty_adaptado"
    t.integer "adpt"
    t.index ["grade", "identifier"], name: "index_school_classes_on_grade_and_identifier", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "subject_id", null: false
    t.index ["subject_id"], name: "index_subjects_teachers_on_subject_id"
    t.index ["teacher_id"], name: "index_subjects_teachers_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["name", "email", "phone"], name: "index_teachers_on_name_and_email_and_phone", unique: true
  end

  add_foreign_key "high_school_subjects", "high_schools"
  add_foreign_key "high_school_subjects", "subjects"
  add_foreign_key "high_schools", "subjects"
  add_foreign_key "subjects", "teachers"
  add_foreign_key "subjects_teachers", "subjects"
  add_foreign_key "subjects_teachers", "teachers"
end
