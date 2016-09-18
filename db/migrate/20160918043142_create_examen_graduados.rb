class CreateExamenGraduados < ActiveRecord::Migration[5.0]
  def change
    create_table :examen_graduados do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
