class CreateCambioComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :cambio_comite_registros do |t|
      t.string :tutor_uno
      t.string :tutor_dos
      t.string :tutor_tres
      t.string :tutor_cuatro
      t.references :user, foreign_key: true
      t.boolean :valida_consejero
      t.boolean :valida_coordinador
      t.string :estado

      t.timestamps
    end
  end
end
