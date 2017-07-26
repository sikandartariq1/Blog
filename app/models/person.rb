class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  self.table_name = "persons"
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :publications, foreign_key: :article_author_id
	has_many :articles, through: :publications

	has_many :subordinates, class_name: :Person, foreign_key: :manager_id
	belongs_to :manager, class_name: :Person
end
