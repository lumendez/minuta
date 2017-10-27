class CreateRevocacionRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :revocacion_registros do |t|
      t.string :titulo
      t.string :director
      t.references :user, foreign_key: true
      t.boolean :valida_consejero
      t.boolean :valida_coordinador
      t.string :estado

      t.timestamps
    end
  end
end
