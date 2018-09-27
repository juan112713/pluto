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

ActiveRecord::Schema.define(version: 2018_09_27_003032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bus_conductors", force: :cascade do |t|
    t.bigint "bus_id"
    t.bigint "conductor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bus_id"], name: "index_bus_conductors_on_bus_id"
    t.index ["conductor_id"], name: "index_bus_conductors_on_conductor_id"
  end

  create_table "buses", force: :cascade do |t|
    t.string "movil"
    t.integer "cantidad_sillas"
    t.integer "total_pasajeros"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conductors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "tipo_doc_identidad"
    t.string "num_doc_identidad"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paraderos", force: :cascade do |t|
    t.string "nombre_p"
    t.string "tipo_p"
    t.string "ubicacion_p"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ruta", force: :cascade do |t|
    t.string "nombre_ruta"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ruta_paraderos", force: :cascade do |t|
    t.bigint "ruta_id"
    t.bigint "paradero_id"
    t.integer "cantidad_solicitudes"
    t.boolean "punto_inicial"
    t.boolean "punto_fin"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paradero_id"], name: "index_ruta_paraderos_on_paradero_id"
    t.index ["ruta_id"], name: "index_ruta_paraderos_on_ruta_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "tipo_doc_identidad"
    t.string "num_doc_identidad"
    t.date "fecha_nacimiento"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bus_conductors", "buses"
  add_foreign_key "bus_conductors", "conductors"
  add_foreign_key "ruta_paraderos", "paraderos"
  add_foreign_key "ruta_paraderos", "ruta", column: "ruta_id"
end
