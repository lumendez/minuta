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

ActiveRecord::Schema.define(version: 20180126204042) do

  create_table "agregar_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.string   "clave"
    t.index ["user_id"], name: "index_agregar_asignaturas_on_user_id", using: :btree
  end

  create_table "alumnos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baja_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.string   "clave"
    t.index ["user_id"], name: "index_baja_asignaturas_on_user_id", using: :btree
  end

  create_table "baja_programas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.index ["user_id"], name: "index_baja_programas_on_user_id", using: :btree
  end

  create_table "cambiar_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "anterior"
    t.string   "actual"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "clave_anterior"
    t.string   "clave_actual"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_cambiar_asignaturas_on_user_id", using: :btree
  end

  create_table "cambiar_consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "anterior"
    t.string   "actual"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.index ["user_id"], name: "index_cambiar_consejeros_on_user_id", using: :btree
  end

  create_table "cambiar_temas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "anterior"
    t.string   "actual"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.boolean  "revisado",           default: false
    t.index ["user_id"], name: "index_cambiar_temas_on_user_id", using: :btree
  end

  create_table "cambio_comision_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "presidente"
    t.string   "secretario"
    t.string   "primer_vocal"
    t.string   "segundo_vocal"
    t.string   "tercer_vocal"
    t.string   "suplente"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "revisado"
    t.index ["user_id"], name: "index_cambio_comision_registros_on_user_id", using: :btree
  end

  create_table "cambio_comite_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tutor_uno"
    t.string   "tutor_dos"
    t.string   "tutor_tres"
    t.string   "tutor_cuatro"
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "revisado"
    t.index ["user_id"], name: "index_cambio_comite_registros_on_user_id", using: :btree
  end

  create_table "cambio_director_tesis_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "codirector"
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "revisado",           default: false
    t.index ["user_id"], name: "index_cambio_director_tesis_registros_on_user_id", using: :btree
  end

  create_table "clave_semestres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comision_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "presidente"
    t.string   "secretario"
    t.string   "primer_vocal"
    t.string   "segundo_vocal"
    t.string   "tercer_vocal"
    t.string   "suplente"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "revisado"
    t.index ["user_id"], name: "index_comision_registros_on_user_id", using: :btree
  end

  create_table "comite_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tutor_uno"
    t.string   "tutor_dos"
    t.string   "tutor_tres"
    t.string   "tutor_cuatro"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.boolean  "revisado"
    t.index ["user_id"], name: "index_comite_registros_on_user_id", using: :btree
  end

  create_table "consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coordinador_nombres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursar_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "clave"
    t.string   "unidad"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.index ["user_id"], name: "index_cursar_asignaturas_on_user_id", using: :btree
  end

  create_table "director_tesis_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "codirector"
    t.boolean  "revisado",           default: false
    t.index ["user_id"], name: "index_director_tesis_registros_on_user_id", using: :btree
  end

  create_table "electrica_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "clave"
  end

  create_table "electrica_consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electronica_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electronica_consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examen_graduados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tipo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.index ["user_id"], name: "index_examen_graduados_on_user_id", using: :btree
  end

  create_table "examen_tipos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mecanica_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mecanica_consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receso_semestres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "semestre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.index ["user_id"], name: "index_receso_semestres_on_user_id", using: :btree
  end

  create_table "revocacion_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "titulo"
    t.string   "director"
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["user_id"], name: "index_revocacion_registros_on_user_id", using: :btree
  end

  create_table "sepi_programas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sistemas_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sistemas_consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telecom_asignaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telecom_consejeros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tema_tesis_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tema"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.boolean  "revisado",           default: false
    t.index ["user_id"], name: "index_tema_tesis_registros_on_user_id", using: :btree
  end

  create_table "tesis_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tema"
    t.string   "director"
    t.string   "presidente"
    t.string   "secretario"
    t.string   "primer_vocal"
    t.string   "segundo_vocal"
    t.string   "tercer_vocal"
    t.string   "suplente"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "valida_consejero"
    t.boolean  "valida_coordinador"
    t.string   "estado"
    t.string   "director_dos"
    t.index ["user_id"], name: "index_tesis_registros_on_user_id", using: :btree
  end

  create_table "tipos_bajas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "boleta"
    t.integer  "sepi_programa_id"
    t.integer  "consejero_id"
    t.integer  "coordinador_nombre_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "tipos_usuario_id"
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
    t.string   "area"
    t.string   "paterno"
    t.string   "materno"
    t.index ["consejero_id"], name: "index_users_on_consejero_id", using: :btree
    t.index ["coordinador_nombre_id"], name: "index_users_on_coordinador_nombre_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["sepi_programa_id"], name: "index_users_on_sepi_programa_id", using: :btree
    t.index ["tipos_usuario_id"], name: "index_users_on_tipos_usuario_id", using: :btree
  end

  add_foreign_key "agregar_asignaturas", "users"
  add_foreign_key "baja_asignaturas", "users"
  add_foreign_key "baja_programas", "users"
  add_foreign_key "cambiar_asignaturas", "users"
  add_foreign_key "cambiar_consejeros", "users"
  add_foreign_key "cambiar_temas", "users"
  add_foreign_key "cambio_comision_registros", "users"
  add_foreign_key "cambio_comite_registros", "users"
  add_foreign_key "cambio_director_tesis_registros", "users"
  add_foreign_key "comision_registros", "users"
  add_foreign_key "comite_registros", "users"
  add_foreign_key "cursar_asignaturas", "users"
  add_foreign_key "director_tesis_registros", "users"
  add_foreign_key "examen_graduados", "users"
  add_foreign_key "receso_semestres", "users"
  add_foreign_key "revocacion_registros", "users"
  add_foreign_key "tema_tesis_registros", "users"
  add_foreign_key "tesis_registros", "users"
  add_foreign_key "users", "consejeros"
  add_foreign_key "users", "coordinador_nombres"
  add_foreign_key "users", "sepi_programas"
  add_foreign_key "users", "tipos_usuarios"
end
