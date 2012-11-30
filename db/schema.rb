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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121130114752) do

  create_table "razas", :force => true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registro_bovinos", :force => true do |t|
    t.string   "crotal"
    t.date     "nacimiento"
    t.string   "sexo"
    t.string   "raza"
    t.string   "causa_alta"
    t.string   "vendedor_nombre"
    t.string   "vendedor_nif"
    t.string   "vendedor_codigo"
    t.string   "vendedor_explotacion"
    t.string   "crotal_madre"
    t.date     "alta_explotacion"
    t.string   "causa_baja"
    t.string   "comprador_nombre"
    t.string   "comprador_nif"
    t.string   "comprador_codigo"
    t.date     "baja_explotacion"
    t.string   "traslado_serie"
    t.string   "traslado_numero"
    t.date     "balance_fecha"
    t.integer  "balance_numero_cabezas"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "role"
    t.string   "email"
    t.string   "pw"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
