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

ActiveRecord::Schema.define(:version => 20120621053856) do

  create_table "deliveries", :force => true do |t|
    t.integer  "source"
    t.integer  "destination"
    t.time     "pickup_time"
    t.decimal  "distance"
    t.boolean  "temperature_sensitive"
    t.integer  "driver_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.time     "dead_line"
    t.boolean  "shipped"
    t.integer  "user_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.string   "name"
    t.boolean  "gmaps"
  end

  create_table "riders", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.decimal  "gas_mileage"
    t.decimal  "tank_size"
    t.decimal  "luggage_capacity"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.string   "address"
    t.string   "street"
    t.string   "city"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
