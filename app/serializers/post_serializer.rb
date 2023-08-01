class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags 
  belongs_to :author
  has_many :tags

  def short_content
    object.content.length > 40 ? "#{object.content[0...40]}..." : object.content
  end

end
