class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: AuthorProfileSerializer
  has_many :posts
  # , serializer: PostSerializer

  # def short_content
  #   object.post.content.length > 40 ? "#{object.post.content[0...40]}..." : object.post.content
  # end
end
