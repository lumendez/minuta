class CreateElectricaConsejeros < ActiveRecord::Migration[5.0]
  def change
    create_table :electrica_consejeros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
