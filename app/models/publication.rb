class Publication < ApplicationRecord
  belongs_to :author, class_name: :Person
  belongs_to :article
end
