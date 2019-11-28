# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_27_003558) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "visits_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "cover_file_name"
    t.string "cover_content_type"
    t.integer "cover_file_size"
    t.datetime "cover_updated_at"
    t.string "state", default: "in_draft"
    t.decimal "precio", default: "0.0"
    t.integer "stock", default: 0
    t.string "talla", default: "S"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "article_id", null: false
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "has_categories", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_has_categories_on_article_id"
    t.index ["category_id"], name: "index_has_categories_on_category_id"
  end

  create_table "ordende_compras", force: :cascade do |t|
    t.date "fecha"
    t.string "producto"
    t.integer "cantidad"
    t.decimal "precio"
    t.string "boleta"
    t.string "DNI"
    t.string "nombre"
    t.string "tipo_pago"
    t.decimal "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "usuario"
    t.string "producto"
    t.integer "cantidad"
    t.decimal "precio"
    t.string "DNI"
    t.string "nombres"
    t.string "direccion"
    t.string "estado"
    t.decimal "costoenvio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "rubro"
    t.string "servicio"
    t.string "correoElectronico"
    t.integer "telefono"
    t.string "sitioWed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rails", force: :cascade do |t|
    t.string "g"
    t.string "scaffold"
    t.string "OrdendeCompra"
    t.date "fecha"
    t.string "producto"
    t.integer "cantidad"
    t.decimal "precio"
    t.string "boleta"
    t.string "DNI"
    t.string "nombre"
    t.string "tipo_pago"
    t.decimal "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registro_ventas1s", force: :cascade do |t|
    t.string "codigo"
    t.integer "cantidad"
    t.string "valorUnitario"
    t.integer "numeroBoleta"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "permission_level", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venta", force: :cascade do |t|
    t.date "fecha"
    t.string "codigo"
    t.integer "cant"
    t.string "valorUni"
    t.string "valorTotal"
    t.integer "numBoleta"
    t.string "nombreCli"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "articles", "users"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments", "users"
  add_foreign_key "has_categories", "articles"
  add_foreign_key "has_categories", "categories"
end
