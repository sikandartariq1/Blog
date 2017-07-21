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

ActiveRecord::Schema.define(version: 20170721104328) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "likeable_id"
    t.string "likeable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "persons", force: :cascade do |t|
    t.string "name"
    t.integer "manager_id"
    t.string "phone_no"
    t.string "company"
    t.index ["manager_id"], name: "index_persons_on_manager_id"
  end

  create_table "publications", force: :cascade do |t|
    t.integer "article_author_id"
    t.integer "published_article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_author_id"], name: "index_publications_on_article_author_id"
    t.index ["published_article_id"], name: "index_publications_on_published_article_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review_type"
    t.string "name"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
