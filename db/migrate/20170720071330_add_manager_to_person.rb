class AddManagerToPerson < ActiveRecord::Migration[5.1]
  def change
    add_reference :persons, :manager, foreign_key: true
  end
end
