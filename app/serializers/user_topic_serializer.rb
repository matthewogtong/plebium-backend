class UserTopicSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :topic_id
  has_one :user
  has_one :topic
end
