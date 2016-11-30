class AddValidaConsejeroToRecesoSemestres < ActiveRecord::Migration[5.0]
  def change
    add_column :receso_semestres, :valida_consejero, :boolean
  end
end
