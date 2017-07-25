class Article < ApplicationRecord

  enum status: [:published, :unpublish]

  has_many :comments, dependent: :destroy
  has_many :likes, :as => :likeable, dependent: :destroy
  
  has_many :article_publications, foreign_key: :published_article_id
  has_many :authors, through: :publications, source: :article_author

  validates :title, presence: true, length: {minimum: 5}
  scope :created_before, ->(time) {where("created_at < ?", time)}
  scope :created_today, -> {where(created_at: (Time.zone.now - 24.hours)..Time.zone.now)}

  mount_uploader :article, ArticleUploader

end
