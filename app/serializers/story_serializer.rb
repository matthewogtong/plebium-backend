class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :snaps, :read_time, :created_at
  has_one :user
  has_one :topic
end
