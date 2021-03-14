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

ActiveRecord::Schema.define(version: 2021_03_14_190236) do

  create_table "alergenos", force: :cascade do |t|
    t.string "nombre"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "cifNif"
    t.string "direccion"
    t.string "localidad"
    t.integer "cp"
    t.string "provincia"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role_id", default: 2, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "suscriptor", default: false
    t.index ["email"], name: "index_clientes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clientes_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_clientes_on_role_id"
  end

  create_table "grupoingredientes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingrediente_alergenos", force: :cascade do |t|
    t.integer "ingrediente_id"
    t.integer "alergeno_id"
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "grupoingrediente_id", null: false
    t.index ["grupoingrediente_id"], name: "index_ingredientes_on_grupoingrediente_id"
  end

  create_table "menu_platos", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "plato_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cliente_id", null: false
    t.index ["cliente_id"], name: "index_menus_on_cliente_id"
  end

  create_table "plato_ingredientes", force: :cascade do |t|
    t.integer "plato_id"
    t.integer "ingrediente_id"
  end

  create_table "platos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clientes", "roles"
  add_foreign_key "ingredientes", "grupoingredientes"
  add_foreign_key "menus", "clientes"
end
