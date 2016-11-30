class CreateSistemasConsejeros < ActiveRecord::Migration[5.0]
  def change
    create_table :sistemas_consejeros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
