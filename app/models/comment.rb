class Comment < ActiveRecord::Base
  attr_accessible :body, :pin_id, :user_id

  belongs_to :user
  belongs_to :pin

  validates :body, presence: :true

end

