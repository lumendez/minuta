class DropAsignaturaElectricas < ActiveRecord::Migration[5.0]
  def up
    drop_table :asignatura_electricas
  end

  def down
    create_table "asignatura_electricas", force: :cascade do |t|
      t.string   "nombre"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      end
  end
end
