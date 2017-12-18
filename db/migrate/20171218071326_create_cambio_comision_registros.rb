class CreateCambioComisionRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :cambio_comision_registros do |t|
      t.string :presidente
      t.string :secretario
      t.string :primer_vocal
      t.string :segundo_vocal
      t.string :tercer_vocal
      t.string :suplente
      t.boolean :valida_consejero
      t.boolean :valida_coordinador
      t.string :estado

      t.timestamps
    end
  end
end
