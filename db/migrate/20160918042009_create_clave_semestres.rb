class CreateClaveSemestres < ActiveRecord::Migration[5.0]
  def change
    create_table :clave_semestres do |t|
      t.string :semestre

      t.timestamps
    end
  end
end
