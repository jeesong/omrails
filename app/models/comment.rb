class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :commentable_type, :commentable_id

  belongs_to :user
  # belongs_to :pin

  belongs_to :commentable, polymorphic: true

  validates :body, presence: :true

end

