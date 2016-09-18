class CreateConsejeros < ActiveRecord::Migration[5.0]
  def change
    create_table :consejeros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
