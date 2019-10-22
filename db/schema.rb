# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20191022211301) do

  create_table "grades", force: :cascade do |t|
    t.integer "student_id"
    t.string  "term"
    t.integer "year"
    t.string  "subject"
    t.integer "percentage_grade"
    t.string  "letter_grade"
  end

  create_table "students", force: :cascade do |t|
    t.string  "name"
    t.date    "birthdate"
    t.string  "grade"
    t.string  "gender"
    t.boolean "still_in_school"
  end

  create_table "students_teachers", force: :cascade do |t|
    t.integer "student_id"
    t.integer "teacher_id"
    t.string  "grade"
    t.string  "subject"
    t.string  "subject_name"
    t.string  "classroom"
  end

  create_table "teachers", force: :cascade do |t|
    t.string  "name"
    t.string  "subject"
    t.string  "grade"
    t.date    "birthdate"
    t.boolean "still_in_school"
  end

end
