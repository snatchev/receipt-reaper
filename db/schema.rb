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

ActiveRecord::Schema.define(:version => 20110323024504) do

  create_table "accounts", :force => true do |t|
    t.string  "name"
    t.boolean "cash"
  end

  create_table "categories", :force => true do |t|
    t.string "name"
    t.string "group"
  end

  create_table "receipts", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.date     "purchase_date"
    t.integer  "amount"
    t.boolean  "business_expense"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
  end

end
