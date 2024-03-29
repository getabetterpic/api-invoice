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

ActiveRecord::Schema.define(version: 20141001150036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applied_payments", force: true do |t|
    t.integer  "payment_id"
    t.integer  "invoice_id"
    t.decimal  "amount"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applied_payments", ["invoice_id"], name: "index_applied_payments_on_invoice_id", using: :btree
  add_index "applied_payments", ["payment_id"], name: "index_applied_payments_on_payment_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "internal_reference"
    t.string   "external_reference"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  add_index "companies", ["external_reference"], name: "index_companies_on_external_reference", using: :btree
  add_index "companies", ["internal_reference"], name: "index_companies_on_internal_reference", unique: true, using: :btree
  add_index "companies", ["name"], name: "index_companies_on_name", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "reference"
    t.string   "status"
    t.string   "email"
    t.string   "phone"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "erased_at"
  end

  add_index "customers", ["company_id"], name: "index_customers_on_company_id", using: :btree
  add_index "customers", ["email"], name: "index_customers_on_email", using: :btree
  add_index "customers", ["reference"], name: "index_customers_on_reference", using: :btree

  create_table "invoice_lines", force: true do |t|
    t.string   "description"
    t.decimal  "units",       precision: 5,  scale: 2
    t.decimal  "unit_price",  precision: 16, scale: 4
    t.decimal  "line_amount", precision: 16, scale: 4
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "invoice_id"
  end

  add_index "invoice_lines", ["invoice_id"], name: "index_invoice_lines_on_invoice_id", using: :btree

  create_table "invoices", force: true do |t|
    t.date     "invoice_date"
    t.string   "description"
    t.integer  "customer_id"
    t.string   "status"
    t.integer  "revision"
    t.string   "terms"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
  end

  add_index "invoices", ["customer_id"], name: "index_invoices_on_customer_id", using: :btree

  create_table "memberships", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memberships", ["company_id"], name: "index_memberships_on_company_id", using: :btree
  add_index "memberships", ["user_id"], name: "index_memberships_on_user_id", using: :btree

  create_table "payments", force: true do |t|
    t.decimal  "amount"
    t.integer  "customer_id"
    t.string   "payment_method"
    t.string   "reference"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "payment_date"
  end

  add_index "payments", ["customer_id"], name: "index_payments_on_customer_id", using: :btree

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "status"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
