class AddUploaderToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :article, :string
  end
end
