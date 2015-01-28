class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment
  has_one :post
  has_one :author
end
