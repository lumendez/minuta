class AddEstadoToRecesoSemestres < ActiveRecord::Migration[5.0]
  def change
    add_column :receso_semestres, :estado, :string
  end
end
