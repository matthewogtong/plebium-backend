class Topic < ApplicationRecord
    has_many :stories
    has_many :usertopics
    has_many :users, through: :usertopics 
end
