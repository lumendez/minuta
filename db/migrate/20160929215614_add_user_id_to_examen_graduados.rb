class AddUserIdToExamenGraduados < ActiveRecord::Migration[5.0]
  def change
    add_reference :examen_graduados, :user, foreign_key: true
  end
end
