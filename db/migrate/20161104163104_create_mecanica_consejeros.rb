class CreateMecanicaConsejeros < ActiveRecord::Migration[5.0]
  def change
    create_table :mecanica_consejeros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
