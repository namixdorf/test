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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131203224014) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "headline"
    t.text     "body"
    t.text     "body_2"
    t.text     "featured_quote"
    t.string   "quote_credit"
    t.integer  "category_id"
    t.datetime "publication_date"
    t.string   "url_slug"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "quote_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "articles", ["title"], :name => "index_articles_on_title"
  add_index "articles", ["url_slug"], :name => "index_articles_on_url_slug"

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "author"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.text     "full_name"
    t.string   "short_name"
    t.string   "tab_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "classroom_courses", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "external_articles", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "body"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "external_videos", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inview_articles", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "linkers", :force => true do |t|
    t.integer "article_id"
    t.integer "video_id"
  end

  create_table "online_courses", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "quotes", :force => true do |t|
    t.string   "text"
    t.string   "author"
    t.string   "css_class"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.string   "url_slug"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tools", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",           :limit => 80
    t.string   "password_digest"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"

  create_table "videos", :force => true do |t|
    t.integer  "category_id"
    t.boolean  "landing_page_video"
    t.string   "image_name"
    t.string   "hashcode"
    t.string   "mp4_file_name"
    t.string   "mp4_content_type"
    t.integer  "mp4_file_size"
    t.datetime "mp4_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
