class AddRevisadoToTemaTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tema_tesis_registros, :revisado, :boolean, default: false
  end
end
