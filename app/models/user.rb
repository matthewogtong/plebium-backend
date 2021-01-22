class User < ApplicationRecord
    has_many :bookmarks
    has_many :usertopics
    has_many :topics, through: :usertopics
end
