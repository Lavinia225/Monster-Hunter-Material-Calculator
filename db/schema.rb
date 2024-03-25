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

ActiveRecord::Schema[7.1].define(version: 2024_03_25_225922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armor_materials", force: :cascade do |t|
    t.integer "armor_id"
    t.integer "material_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "armor_sets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rarity"
  end

  create_table "armor_skills", force: :cascade do |t|
    t.integer "armor_id"
    t.integer "skill_id"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.integer "armor_set_id"
    t.string "slot"
    t.integer "defense"
    t.integer "decor_one"
    t.integer "decor_two"
    t.integer "decor_three"
    t.integer "fire_res"
    t.integer "water_res"
    t.integer "thunder_res"
    t.integer "ice_res"
    t.integer "dragon_res"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cost"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monster_materials", force: :cascade do |t|
    t.integer "monster_id"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "natural_materials", force: :cascade do |t|
    t.integer "material_id"
    t.integer "natural_source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "natural_sources", force: :cascade do |t|
    t.string "source"
    t.string "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.integer "max_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
