class CreateConsejeroElectricas < ActiveRecord::Migration[5.0]
  def change
    create_table :consejero_electricas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
