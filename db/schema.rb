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

ActiveRecord::Schema.define(version: 20150916055134) do

  create_table "addresses", force: true do |t|
    t.string   "detail",                 default: "", null: false
    t.string   "state",                  default: "", null: false
    t.string   "city",                   default: ""
    t.integer  "pin"
    t.integer  "telephone",    limit: 8
    t.integer  "address_type", limit: 2, default: 0
    t.integer  "mobile",       limit: 8
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applicants", force: true do |t|
    t.string   "first_name",                  default: "", null: false
    t.string   "middle_name",                 default: ""
    t.string   "last_name",                   default: "", null: false
    t.string   "dob",                         default: "", null: false
    t.string   "email",                       default: "", null: false
    t.string   "profile_pic"
    t.string   "nationality"
    t.boolean  "work_permit_india"
    t.string   "other_nationality_detail"
    t.boolean  "passport"
    t.string  "passport_no"
    t.string   "passport_valid_till"
    t.integer  "gender",                      default: 0
    t.boolean  "visa_denied"
    t.string   "visa_denied_detail"
    t.boolean  "overseas_assignments"
    t.string   "overseas_assignments_detail"
    t.boolean  "major_illness"
    t.string   "major_illness_detail"
    t.boolean  "convicted"
    t.string   "convicted_detail"
    t.boolean  "have_bond"
    t.string   "others"
    t.string   "date"
    t.string   "place"
    t.string   "sign"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "slug"
    t.string   "avatar"
  end

  add_index "applicants", ["deleted_at"], name: "index_applicants_on_deleted_at", using: :btree
  add_index "applicants", ["slug"], name: "index_applicants_on_slug", using: :btree

  create_table "educations", force: true do |t|
    t.string   "degree",          default: "", null: false
    t.string   "specialization",  default: ""
    t.string   "institute",       default: "", null: false
    t.string   "location",        default: "", null: false
    t.string   "graduation_year", default: "", null: false
    t.string   "marks"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", force: true do |t|
    t.string   "name",                              default: "", null: false
    t.string   "start"
    t.string   "end"
    t.string   "designation"
    t.string   "emp_id"
    t.string   "roles"
    t.string   "address"
    t.string   "phone"
    t.string   "leaving_reason"
    t.string   "supervisor_details"
    t.boolean  "supervisor_as_reference"
    t.integer  "current",                           default: 0
    t.integer  "company_streangth",       limit: 8
    t.string   "sales_turnover"
    t.integer  "notice_period"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "references", force: true do |t|
    t.string   "name",         default: "", null: false
    t.string   "duration"
    t.string   "relationship"
    t.string   "organization"
    t.string   "designation"
    t.string   "off_email"
    t.string   "per_email"
    t.string   "home_phone"
    t.string   "office_phone"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
