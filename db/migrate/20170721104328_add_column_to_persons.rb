class AddColumnToPersons < ActiveRecord::Migration[5.1]
  def change
    add_column :persons, :phone_no, :string
    add_column :persons, :company, :string
  end
end
