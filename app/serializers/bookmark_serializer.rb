class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :user, :story
  has_one :user
  has_one :story
end
