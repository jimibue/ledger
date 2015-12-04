class User < ActiveRecord::Base
  #first_name #last_name username

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates_uniqueness_of :username
  validates_presence_of :first_name, :username
 # TODO validate char limit
end
