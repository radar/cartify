# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_03_013932) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_customers_on_shop_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.integer "amount_cents"
    t.string "amount_currency"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.string "card_type"
    t.index ["customer_id"], name: "index_purchases_on_customer_id"
    t.index ["shop_id"], name: "index_purchases_on_shop_id"
  end

  create_table "refunds", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.integer "purchase_id", null: false
    t.integer "amount_cents"
    t.string "amount_currency"
    t.string "status"
    t.string "card_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_refunds_on_purchase_id"
    t.index ["shop_id"], name: "index_refunds_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "purchases", "shops"
  add_foreign_key "refunds", "purchases"
  add_foreign_key "refunds", "shops"
end
