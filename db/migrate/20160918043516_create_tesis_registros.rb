class CreateTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :tesis_registros do |t|
      t.string :tema
      t.string :director
      t.string :presidente
      t.string :secretario
      t.string :primer_vocal
      t.string :segundo_vocal
      t.string :tercer_vocal
      t.string :suplente

      t.timestamps
    end
  end
end
