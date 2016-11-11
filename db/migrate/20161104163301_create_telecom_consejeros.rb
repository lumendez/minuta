class CreateTelecomConsejeros < ActiveRecord::Migration[5.0]
  def change
    create_table :telecom_consejeros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
