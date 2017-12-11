class CreateTemaTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :tema_tesis_registros do |t|
      t.string :tema

      t.timestamps
    end
  end
end
