class Comment < ActiveRecord::Base
  # Set up comments as polymorphic
  belongs_to :commentable, :polymorphic => true
  
  # Validations
  validates_presence_of :name, :email, :content
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i, :message => "is not a valid format"
  
end
