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

ActiveRecord::Schema.define(:version => 20100721185728) do

  create_table "benutzer", :force => true do |t|
    t.string   "anrede"
    t.string   "vorname"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seminars", :force => true do |t|
    t.string   "titel"
    t.text     "beschreibung"
    t.decimal  "preis",                :precision => 10, :scale => 2
    t.string   "kategorie"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
    t.integer  "seminartermine_count"
  end

  add_index "seminars", ["cached_slug"], :name => "index_seminars_on_cached_slug"

  create_table "seminartermine", :force => true do |t|
    t.date     "beginn"
    t.date     "ende"
    t.string   "raum"
    t.integer  "seminar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
  end

  add_index "seminartermine", ["cached_slug"], :name => "index_seminartermine_on_cached_slug"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "teilnahmen", :force => true do |t|
    t.integer  "seminartermin_id"
    t.integer  "benutzer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
