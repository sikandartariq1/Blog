class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review_type
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
