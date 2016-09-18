class CreateExamenTipos < ActiveRecord::Migration[5.0]
  def change
    create_table :examen_tipos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
