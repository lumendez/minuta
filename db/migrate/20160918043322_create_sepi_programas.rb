class CreateSepiProgramas < ActiveRecord::Migration[5.0]
  def change
    create_table :sepi_programas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
