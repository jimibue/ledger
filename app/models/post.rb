class Post < ActiveRecord::Base
  # user_id #ledge #appreciate
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates_presence_of :user_id
end
