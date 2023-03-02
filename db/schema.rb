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

ActiveRecord::Schema.define(version: 2023_03_02_102707) do

  create_table "movie", force: :cascade do |t|
    t.text "title"
    t.date "year"
    t.text "description"
    t.text "category"
    t.decimal "price"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
    t.integer "star_rating"
    t.text "comment"
  end

  create_table "user", force: :cascade do |t|
    t.text "user_name"
    t.text "email"
    t.text "password"
  end

end
