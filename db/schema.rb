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

ActiveRecord::Schema.define(version: 20160918053331) do

  create_table "agregar_asignaturas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asignatura_electricas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baja_asignaturas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baja_programas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cambiar_asignaturas", force: :cascade do |t|
    t.string   "anterior"
    t.string   "actual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cambiar_consejeros", force: :cascade do |t|
    t.string   "anterior"
    t.string   "actual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cambiar_temas", force: :cascade do |t|
    t.string   "anterior"
    t.string   "actual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clave_semestres", force: :cascade do |t|
    t.string   "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comite_registros", force: :cascade do |t|
    t.string   "tutor_uno"
    t.string   "tutor_dos"
    t.string   "tutor_tres"
    t.string   "tutor_cuatro"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "consejero_electricas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consejeros", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coordinador_nombres", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursar_asignaturas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "clave"
    t.string   "unidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examen_graduados", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examen_tipos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receso_semestres", force: :cascade do |t|
    t.string   "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sepi_programas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tesis_registros", force: :cascade do |t|
    t.string   "tema"
    t.string   "director"
    t.string   "presidente"
    t.string   "secretario"
    t.string   "primer_vocal"
    t.string   "segundo_vocal"
    t.string   "tercer_vocal"
    t.string   "suplente"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tipos_bajas", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_usuarios", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "boleta"
    t.integer  "sepi_programa_id"
    t.integer  "consejero_id"
    t.integer  "coordinador_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "tipos_usuario_id"
    t.integer  "coordinador_nombre_id"
    t.index ["consejero_id"], name: "index_users_on_consejero_id"
    t.index ["coordinador_id"], name: "index_users_on_coordinador_id"
    t.index ["coordinador_nombre_id"], name: "index_users_on_coordinador_nombre_id"
    t.index ["sepi_programa_id"], name: "index_users_on_sepi_programa_id"
    t.index ["tipos_usuario_id"], name: "index_users_on_tipos_usuario_id"
  end

end
