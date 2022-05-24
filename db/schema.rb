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

ActiveRecord::Schema[7.0].define(version: 2022_05_23_182617) do
  create_table "masters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "poke_party", default: "--- []\n"
    t.index "\"party\"", name: "index_masters_on_party"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "pokeid"
    t.string "name"
    t.string "iamgeurl"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "trainers" because of following StandardError
#   Unknown type 'array' for column 'party'

  create_table "zones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "wild_pokemon", default: "--- []\n"
    t.text "directions", default: "--- []\n"
  end

end
