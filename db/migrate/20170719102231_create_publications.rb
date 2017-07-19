class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.references :article_author, foreign_key: true
      t.references :published_article, foreign_key: true
      
      t.timestamps
    end
  end
end
