class Publication < ApplicationRecord
  belongs_to :article_author, class_name: :Person
  belongs_to :published_article, class_name: :Article
end
