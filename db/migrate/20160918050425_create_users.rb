class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :boleta
      t.belongs_to :sepi_programa, foreign_key: true
      t.belongs_to :consejero, foreign_key: true
      t.belongs_to :coordinador_nombre, foreign_key: true

      t.timestamps
    end
  end
end
