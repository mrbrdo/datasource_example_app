class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :latest_post_title
  has_one :owner
  has_many :posts
end
