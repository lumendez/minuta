class AddAreaToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :area, :string
  end
end
