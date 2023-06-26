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

ActiveRecord::Schema[7.0].define(version: 2023_06_22_150103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "therapy_session_id", null: false
    t.bigint "user_id", null: false
    t.bigint "therapist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["therapist_id"], name: "index_appointments_on_therapist_id"
    t.index ["therapy_session_id"], name: "index_appointments_on_therapy_session_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "name"
    t.string "specialization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapy_sessions", force: :cascade do |t|
    t.bigint "therapist_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "booked", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["therapist_id"], name: "index_therapy_sessions_on_therapist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "therapists"
  add_foreign_key "appointments", "therapy_sessions"
  add_foreign_key "appointments", "users"
  add_foreign_key "therapy_sessions", "therapists"
end
