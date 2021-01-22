class Story < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :responses
  has_many :bookmarks
end
