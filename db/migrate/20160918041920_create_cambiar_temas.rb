class CreateCambiarTemas < ActiveRecord::Migration[5.0]
  def change
    create_table :cambiar_temas do |t|
      t.string :anterior
      t.string :actual

      t.timestamps
    end
  end
end
