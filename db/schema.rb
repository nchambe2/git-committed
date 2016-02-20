# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160219195436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "rating"
    t.integer  "profile_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "filters", force: :cascade do |t|
    t.integer  "filterable_id"
    t.string   "filterable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "filters", ["filterable_type", "filterable_id"], name: "index_filters_on_filterable_type_and_filterable_id", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "liker_id"
    t.integer  "liked_id"
    t.boolean  "pulled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oss", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "picture"
    t.text     "about_me"
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title", null: false
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "type", null: false
  end

  create_table "sexual_orientations", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "sexual_preferences", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "text_editors", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "user_filters", force: :cascade do |t|
    t.integer  "filter_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "language_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_seekings", force: :cascade do |t|
    t.integer  "relationship_type_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",            null: false
    t.string   "last_name",             null: false
    t.string   "password_digest",       null: false
    t.string   "username",              null: false
    t.string   "email",                 null: false
    t.string   "zip_code",              null: false
    t.date     "birthday",              null: false
    t.integer  "gender_id"
    t.integer  "sexual_orientation_id"
    t.integer  "sexual_preference_id"
    t.integer  "text_editor_id"
    t.integer  "os_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users_text_editors", force: :cascade do |t|
    t.integer "text_editor_id"
    t.integer "user_id"
  end

end
