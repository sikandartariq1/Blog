class ChangeDataTypeForStatus < ActiveRecord::Migration[5.1]
  def up
  	change_column :articles, :status, :integer
  end
  def down
  	change_column :articles, :status, :string
  end
end
