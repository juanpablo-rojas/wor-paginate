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

ActiveRecord::Schema.define(version: 2019_01_24_175354) do

  create_table "dummy_model_grand_sons", force: :cascade do |t|
    t.string "name"
    t.integer "something"
    t.integer "dummy_model_son_id"
    t.index ["dummy_model_son_id"], name: "index_dummy_model_grand_sons_on_dummy_model_son_id"
  end

  create_table "dummy_model_sons", force: :cascade do |t|
    t.string "name"
    t.integer "something"
    t.integer "dummy_model_id"
    t.index ["dummy_model_id"], name: "index_dummy_model_sons_on_dummy_model_id"
  end

  create_table "dummy_models", force: :cascade do |t|
    t.string "name"
    t.integer "something"
  end

end
