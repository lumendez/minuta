class CreateTiposBajas < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_bajas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
