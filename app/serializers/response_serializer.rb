class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :content, :snaps
  has_one :story
end
