class Comment < ActiveRecord::Base
  belongs_to :post_id
  belongs_to :user_id

  validates_presence_of :post_id, :user_id, :reply
end
