class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :owner
  has_many :posts
end
