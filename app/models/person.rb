class Person < ApplicationRecord
	has_many :article_publications, :foreign_key :article_author_id
	has_many :published_articles, through: :publications
end
