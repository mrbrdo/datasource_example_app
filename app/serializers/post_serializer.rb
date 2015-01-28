class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :author
  has_many :comments
end
