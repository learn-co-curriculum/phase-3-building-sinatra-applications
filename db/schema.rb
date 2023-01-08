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

ActiveRecord::Schema.define(version: 2023_01_07_023827) do

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "muscle"
    t.integer "reps"
    t.integer "sets"
    t.integer "workout_id"
  end

  create_table "foods", force: :cascade do |t|
    t.integer "calories"
    t.integer "protein"
    t.integer "carbohydrates"
    t.integer "fats"
  end

  create_table "progresses", force: :cascade do |t|
    t.date "date"
    t.string "name"
    t.text "reps_sets_weights", default: "{}", null: false
  end

  create_table "rep_and_sets", force: :cascade do |t|
    t.integer "reps"
    t.integer "sets"
    t.integer "rep_and_set_id"
  end

  create_table "total_nutrition", force: :cascade do |t|
    t.integer "total_calories"
    t.integer "total_protein"
    t.integer "total_carbohydrates"
    t.integer "total_fats"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
  end

end
