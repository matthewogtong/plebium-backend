# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Topic.delete_all
UserTopic.delete_all
Story.delete_all
Bookmark.delete_all
Response.delete_all

User.create(username: "Sara", first_name: "Sara", last_name: "Cemal")


#TOPIC SEEDS

Topic.create(name: "Arts & Entertainment")
Topic.create(name: "Culture")
Topic.create(name: "Equality")
Topic.create(name: "Health")
Topic.create(name: "Industry")
Topic.create(name: "Personal Development")
Topic.create(name: "Politics")
Topic.create(name: "Programming")
Topic.create(name: "Science")
Topic.create(name: "Self")
Topic.create(name: "Society")
Topic.create(name: "Technology")


UserTopic.create(user_id: 1, topic_id: 1)

Story.create(title: "hi", user_id: 1, topic_id: 1)

Bookmark.create(user_id: 1, story_id: 1)

Response.create(content: "jsdnfkjsdfg", snaps: 3, story_id: 1)