class User < ActiveRecord::Base
  has_many :blogs, foreign_key: "owner_id"
  has_many :posts, foreign_key: "author_id"
  has_many :comments, foreign_key: "author_id"
end
