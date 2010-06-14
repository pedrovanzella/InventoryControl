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

ActiveRecord::Schema.define(:version => 20100611143630) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.integer  "telephone"
    t.text     "address"
    t.string   "email"
    t.integer  "rg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.float    "bought_price"
    t.integer  "stock_ammount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_minimum"
  end

  add_index "products", ["brand_id"], :name => "index_products_on_brand_id"

  create_table "purchase_orders", :force => true do |t|
    t.integer  "product_id"
    t.integer  "purchase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchase_orders", ["product_id"], :name => "index_purchase_orders_on_product_id"
  add_index "purchase_orders", ["purchase_id"], :name => "index_purchase_orders_on_purchase_id"

  create_table "purchases", :force => true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_orders", :force => true do |t|
    t.integer  "sale_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sale_orders", ["product_id"], :name => "index_sale_orders_on_product_id"
  add_index "sale_orders", ["sale_id"], :name => "index_sale_orders_on_sale_id"

  create_table "sales", :force => true do |t|
    t.integer  "customer_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["customer_id"], :name => "index_sales_on_customer_id"

end
