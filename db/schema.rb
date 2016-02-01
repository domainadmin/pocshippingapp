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

ActiveRecord::Schema.define(version: 20160115142348) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "customers", force: :cascade do |t|
    t.string   "tnumber"
    t.string   "ern"
    t.string   "cnumber"
    t.string   "custname"
    t.string   "deliveryto"
    t.string   "type"
    t.integer  "size"
    t.integer  "cinspchar"
    t.integer  "tripamt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offexps", force: :cascade do |t|
    t.integer  "offurn"
    t.integer  "ofstat"
    t.integer  "offpp"
    t.integer  "offtbill"
    t.string   "offintbill"
    t.integer  "offroomrent"
    t.integer  "offrent"
    t.integer  "offren"
    t.integer  "offspfee"
    t.integer  "offstfsal"
    t.integer  "offstvimed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "paymentreceives", force: :cascade do |t|
    t.string   "clientname"
    t.string   "clientcom"
    t.text     "desc"
    t.string   "invoiceno"
    t.date     "invdate"
    t.integer  "cbendamt"
    t.string   "chequen"
    t.string   "chqdet"
    t.integer  "pocbendamt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staffname"
    t.string   "design"
    t.integer  "workingdays"
    t.integer  "salary"
    t.integer  "allowance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "tokeno"
    t.string   "exrelno"
    t.string   "contno"
    t.string   "custno"
    t.string   "delito"
    t.string   "type"
    t.string   "size"
    t.integer  "custinc"
    t.integer  "weight"
    t.integer  "tollcharge"
    t.integer  "tokencharge"
    t.integer  "detcharge"
    t.integer  "triprent"
    t.integer  "triptotamt"
    t.string   "drivname"
    t.integer  "driverbata"
    t.integer  "wghmntbata"
    t.integer  "custbata"
    t.integer  "pocdrivbata"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trailors", force: :cascade do |t|
    t.string   "trailorno"
    t.string   "truckno"
    t.string   "containerno"
    t.datetime "datetimeval"
    t.datetime "exportcoff"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
