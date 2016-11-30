class CreateComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :comite_registros do |t|
      t.string :tutor_uno
      t.string :tutor_dos
      t.string :tutor_tres
      t.string :tutor_cuatro

      t.timestamps
    end
  end
end
