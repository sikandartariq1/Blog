class ChangeManagerIdToNullable < ActiveRecord::Migration[5.1]
  def change
  	change_column :persons, :manager_id, :integer, null: :true
  end
end
