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

ActiveRecord::Schema.define(version: 2020_07_07_165622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_goals", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "status", default: "Not Started"
    t.string "steps"
    t.integer "business_question_answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_question_answer_id"], name: "index_business_goals_on_business_question_answer_id"
  end

  create_table "business_question_answers", force: :cascade do |t|
    t.integer "business_id", null: false
    t.integer "business_question_id", null: false
    t.string "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_business_question_answers_on_business_id"
    t.index ["business_question_id"], name: "index_business_question_answers_on_business_question_id"
  end

  create_table "business_questions", force: :cascade do |t|
    t.string "question"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "business_types", force: :cascade do |t|
    t.string "style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.integer "business_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_type_id"], name: "index_businesses_on_business_type_id"
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.integer "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "business_goals", "business_question_answers"
  add_foreign_key "business_question_answers", "business_questions"
  add_foreign_key "business_question_answers", "businesses"
  add_foreign_key "businesses", "business_types"
  add_foreign_key "businesses", "users"
end
