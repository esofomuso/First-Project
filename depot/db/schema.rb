# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 5) do

  create_table "article_authors", :force => true do |t|
    t.integer "article_id"
    t.integer "author_id"
  end

  create_table "articles", :force => true do |t|
    t.string  "title"
    t.string  "subtitle"
    t.text    "body"
    t.text    "extended"
    t.boolean "active"
    t.integer "issue_id"
    t.integer "lead_photo_id"
    t.boolean "featured"
    t.string  "permalink"
  end

  create_table "authors", :force => true do |t|
    t.string "name"
    t.string "permalink"
  end

  create_table "categories", :force => true do |t|
    t.string "name"
    t.string "comment"
  end

  create_table "category_items", :force => true do |t|
    t.integer "category_id"
    t.integer "item_id"
    t.string  "item_type"
  end

  create_table "galleries", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.boolean "active"
    t.boolean "featured"
    t.integer "resource_id"
    t.string  "resource_type"
    t.string  "permalink"
  end

  create_table "gallery_items", :force => true do |t|
    t.integer "gallery_id"
    t.integer "item_id"
    t.string  "item_type"
  end

  create_table "issues", :force => true do |t|
    t.integer "volume"
    t.string  "year"
    t.string  "season"
    t.integer "issue_number"
    t.string  "publish_period"
    t.boolean "active"
    t.integer "cover_photo_id"
  end

  create_table "line_items", :force => true do |t|
    t.integer "order_id",                                 :null => false
    t.string  "product",                                  :null => false
    t.integer "quantity",                                 :null => false
    t.decimal "unit_price", :precision => 5, :scale => 2, :null => false
  end

  create_table "mail_infos", :force => true do |t|
    t.string   "subject"
    t.string   "body"
    t.string   "mail_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletter_email_categories", :force => true do |t|
    t.integer  "email_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletter_emails", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "phone_ext"
    t.string   "email"
    t.boolean  "active"
    t.string   "secret_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "ship_to_name"
    t.string   "ship_to_address"
    t.string   "ship_to_city"
    t.string   "ship_to_state"
    t.string   "ship_to_zipcode"
    t.string   "secret_key"
    t.decimal  "subtotal",              :precision => 5, :scale => 2
    t.decimal  "shipping_and_handling", :precision => 5, :scale => 2
    t.decimal  "tax",                   :precision => 5, :scale => 2
    t.decimal  "total",                 :precision => 5, :scale => 2
    t.string   "paypal_receipt_id"
    t.string   "paypal_txn_id"
    t.string   "status"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", :force => true do |t|
    t.string "name"
  end

  create_table "photographers", :force => true do |t|
    t.string "name"
    t.string "permalink"
  end

  create_table "photos", :force => true do |t|
    t.string  "type"
    t.text    "caption"
    t.boolean "active"
    t.integer "photographer_id"
  end

  create_table "products", :force => true do |t|
    t.string  "title"
    t.text    "description"
    t.string  "image_url"
    t.decimal "price",       :default => 0.0
    t.integer "owner_id"
  end

end
