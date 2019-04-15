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

ActiveRecord::Schema.define(version: 2019_04_15_173248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area_concerns", force: :cascade do |t|
    t.bigint "area_id"
    t.bigint "concern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_area_concerns_on_area_id"
    t.index ["concern_id"], name: "index_area_concerns_on_concern_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_categories_on_area_id"
  end

  create_table "concerns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "formula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formula_id"], name: "index_favourites_on_formula_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "formula_concerns", force: :cascade do |t|
    t.bigint "formula_id"
    t.bigint "concern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concern_id"], name: "index_formula_concerns_on_concern_id"
    t.index ["formula_id"], name: "index_formula_concerns_on_formula_id"
  end

  create_table "formula_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "formula_id"
    t.decimal "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formula_id"], name: "index_formula_ingredients_on_formula_id"
    t.index ["ingredient_id"], name: "index_formula_ingredients_on_ingredient_id"
  end

  create_table "formulas", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.text "description"
    t.text "directions"
    t.bigint "user_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_formulas_on_category_id"
    t.index ["user_id"], name: "index_formulas_on_user_id"
  end

  create_table "ingredient_concerns", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "concern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concern_id"], name: "index_ingredient_concerns_on_concern_id"
    t.index ["ingredient_id"], name: "index_ingredient_concerns_on_ingredient_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "scientific_name"
    t.text "suited_formulas"
    t.string "image"
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  add_foreign_key "area_concerns", "areas"
  add_foreign_key "area_concerns", "concerns"
  add_foreign_key "categories", "areas"
  add_foreign_key "favourites", "formulas"
  add_foreign_key "favourites", "users"
  add_foreign_key "formula_concerns", "concerns"
  add_foreign_key "formula_concerns", "formulas"
  add_foreign_key "formula_ingredients", "formulas"
  add_foreign_key "formula_ingredients", "ingredients"
  add_foreign_key "formulas", "categories"
  add_foreign_key "formulas", "users"
  add_foreign_key "ingredient_concerns", "concerns"
  add_foreign_key "ingredient_concerns", "ingredients"
end
