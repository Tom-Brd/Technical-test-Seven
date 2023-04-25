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

ActiveRecord::Schema[7.0].define(version: 2023_04_25_102143) do
  create_table "pokemons", force: :cascade do |t|
    t.integer "pokemonId"
    t.string "name"
    t.string "imagePath"
    t.integer "weight"
    t.integer "height"
    t.decimal "price"
    t.integer "userId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "transactionId"
    t.integer "action"
    t.integer "userId"
    t.integer "pokemonId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "userId"
    t.string "email"
    t.string "password"
    t.decimal "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
