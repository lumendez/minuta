class AddValidaEstadoToBajaProgramas < ActiveRecord::Migration[5.0]
  def change
    add_column :baja_programas, :estado, :string
  end
end
