# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_21_180807) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "blue_areas", force: :cascade do |t|
    t.string "coordinates"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_blue_areas_on_image_id"
  end

  create_table "green_areas", force: :cascade do |t|
    t.string "coordinates"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_green_areas_on_image_id"
  end

  create_table "image_sessions", force: :cascade do |t|
    t.integer "greenRight"
    t.integer "blueRight"
    t.integer "greenWrong"
    t.integer "blueWrong"
    t.integer "colorlessWrong"
    t.integer "greenLeft"
    t.integer "blueLeft"
    t.integer "image_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_image_sessions_on_image_id"
    t.index ["user_id"], name: "index_image_sessions_on_user_id"
  end

  create_table "image_sets", force: :cascade do |t|
    t.string "cervical_biopsies"
    t.string "ECC"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "image_set_id"
    t.index ["image_set_id"], name: "index_images_on_image_set_id"
  end

  create_table "test_answers", force: :cascade do |t|
    t.integer "test_question_id"
    t.integer "test_id"
    t.string "letter"
    t.string "answer"
    t.boolean "correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_test_answers_on_test_id"
    t.index ["test_question_id"], name: "index_test_answers_on_test_question_id"
  end

  create_table "test_options", force: :cascade do |t|
    t.integer "test_question_id"
    t.string "letter"
    t.string "text"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_question_id"], name: "index_test_options_on_test_question_id"
  end

  create_table "test_questions", force: :cascade do |t|
    t.integer "test_id"
    t.boolean "active"
    t.string "question"
    t.string "correct_ans"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_test_questions_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "pre_test"
    t.integer "questions_correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "test_answers", force: :cascade do |t|
    t.integer "test_question_id"
    t.integer "test_id"
    t.string "letter"
    t.string "answer"
    t.boolean "correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_test_answers_on_test_id"
    t.index ["test_question_id"], name: "index_test_answers_on_test_question_id"
  end

  create_table "test_options", force: :cascade do |t|
    t.integer "test_question_id"
    t.string "letter"
    t.string "text"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_question_id"], name: "index_test_options_on_test_question_id"
  end

  create_table "test_questions", force: :cascade do |t|
    t.integer "test_id"
    t.boolean "active"
    t.string "question"
    t.string "correct_ans"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_test_questions_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "pre_test"
    t.integer "questions_correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "school"
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "image_sessions", "images"
  add_foreign_key "image_sessions", "users"
end
