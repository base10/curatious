# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090222020858) do

  create_table "links", :force => true do |t|
    t.string   "slug",        :null => false
    t.string   "title",       :null => false
    t.text     "description", :null => false
    t.string   "url",         :null => false
    t.integer  "topics_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["slug", "topics_id"], :name => "index_links_on_slug_and_topics_id", :unique => true
  add_index "links", ["slug"], :name => "index_links_on_slug"
  add_index "links", ["topics_id"], :name => "index_links_on_topics_id", :unique => true
  add_index "links", ["url", "topics_id"], :name => "index_links_on_url_and_topics_id", :unique => true

  create_table "topics", :force => true do |t|
    t.string   "slug",        :null => false
    t.string   "name",        :null => false
    t.text     "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["name"], :name => "index_topics_on_name", :unique => true
  add_index "topics", ["slug"], :name => "index_topics_on_slug", :unique => true

end
