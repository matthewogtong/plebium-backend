# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(username: "bob")

software = Topic.create(name: "software")

UserTopic.create(user_id: 1, topic_id: 1)

# bookmark
# story
# response

story_1 = Story.create(title: "hi", user_id: bob, topic_id: software)

Bookmark.create(user_id: bob, story_id: story_1)

Response.create(content: "jsdnfkjsdfg", snaps: 3, story_id: story_1)