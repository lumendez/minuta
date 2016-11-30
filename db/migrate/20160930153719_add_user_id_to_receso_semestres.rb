class AddUserIdToRecesoSemestres < ActiveRecord::Migration[5.0]
  def change
    add_reference :receso_semestres, :user, foreign_key: true
  end
end
