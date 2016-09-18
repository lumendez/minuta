class CreateRecesoSemestres < ActiveRecord::Migration[5.0]
  def change
    create_table :receso_semestres do |t|
      t.string :semestre

      t.timestamps
    end
  end
end
