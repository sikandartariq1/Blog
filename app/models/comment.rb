class Comment < ApplicationRecord
  belongs_to :article
  has_many :likes, :as => :likeable, dependent: :destroy  
  scope :all_liked, -> {joins(:likes).distinct}

  def liked?
  	likes.present?
  end

end
