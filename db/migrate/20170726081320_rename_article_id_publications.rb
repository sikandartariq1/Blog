class RenameArticleIdPublications < ActiveRecord::Migration[5.1]
  def change
  	rename_column :publications, :published_article_id, :article_id
  end
end
