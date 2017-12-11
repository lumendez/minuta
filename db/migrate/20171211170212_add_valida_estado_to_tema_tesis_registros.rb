class AddValidaEstadoToTemaTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tema_tesis_registros, :estado, :string
  end
end
