class TagSerializer < ActiveModel::Serializer
  attributes :name
  has_many :posts
  has_many :post_tags

end
