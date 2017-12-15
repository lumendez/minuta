class CreateCambioDirectorTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :cambio_director_tesis_registros do |t|
      t.string :nombre
      t.string :codirector
      t.references :user, foreign_key: true
      t.boolean :valida_consejero
      t.boolean :valida_coordinador
      t.string :estado

      t.timestamps
    end
  end
end
