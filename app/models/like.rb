class Like < ApplicationRecord
  belongs_to :likeable, :polymorphic => true

  after_create :just_created
  after_commit :saved

  protected
  def just_created
  	puts "just liked..!!"
  end
  def saved
  	puts "Like saved to database"
  end
end
