class User < ApplicationRecord
    has_many :bookmarks
    has_many :stories
    has_many :user_topics
    has_many :topics, through: :user_topics

end
