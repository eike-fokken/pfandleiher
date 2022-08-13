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

ActiveRecord::Schema[7.0].define(version: 2022_08_13_130026) do
  create_table "cooking_groups", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "packing_lane_id", null: false
    t.index ["packing_lane_id"], name: "index_cooking_groups_on_packing_lane_id"
  end

  create_table "issuable_articles", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packing_lanes", force: :cascade do |t|
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_stamps", force: :cascade do |t|
    t.integer "issuable_articles_id", null: false
    t.integer "cooking_groups_id", null: false
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cooking_groups_id"], name: "index_time_stamps_on_cooking_groups_id"
    t.index ["issuable_articles_id"], name: "index_time_stamps_on_issuable_articles_id"
  end

  add_foreign_key "cooking_groups", "packing_lanes"
  add_foreign_key "time_stamps", "cooking_groups", column: "cooking_groups_id"
  add_foreign_key "time_stamps", "issuable_articles", column: "issuable_articles_id"
end
