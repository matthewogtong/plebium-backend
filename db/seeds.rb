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

User.create(username: "Sara", bio: "I'm cool and I wrote for Plebium. <3" first_name: "Sara", last_name: "Cemal")




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
UserTopic.create(user_id: 1, topic_id: 2)
UserTopic.create(user_id: 1, topic_id: 3)
UserTopic.create(user_id: 1, topic_id: 4)
UserTopic.create(user_id: 1, topic_id: 5)
UserTopic.create(user_id: 1, topic_id: 6)
UserTopic.create(user_id: 1, topic_id: 7)

Story.create(title: "hi", user_id: 1, topic_id: 1)
Story.create(title: "Gender Bias in STEM", content: "Learning how to code has been one of the most challenging, yet fulfilling journeys I have embarked on. However, I would be lying if at times I feel like I didn’t belong. It could be partially due to the impending doom of imposter syndrome, or due to the overarching theme of gender bias/inequality in STEM.
 Gender bias can occur consciously/unconsciously, and most times we are taking part in it without even realizing that we are. I may be naive, but I don’t believe it’s as much of conscious bias deterring women from the field as much as it is lack of representation that could unconsciously deter one from pursuing. Particularly in industries like tech where it is more male dominated, 
 dispelling these biases and encouraging more women to join the tech industry can be daunting due to having fewer female examples to help dispel it. While this didn’t fully dissuade me from pursuing this career path, the validity of not wanting to pursue something due to lack of/minimal representation still stands.
I was completely aware of this issue going into my career change and beginning my time at Flatiron. Thankfully, my peers, instructors, and the rest of the FI community has never made me feel anything other than supported and valued, but this is not the reality for a lot of women in the field. In fact, Flatiron has warped my reality of the severity of the situation because of how much slimmer the gender gap is.
 Upon doing some self reflection, I admitted to myself that at times, I also felt like the software engineering field would be too overwhelming or unwelcoming to me as a woman.
Now here come the cold hard facts:
75% of men make up the jobs in the tech industry (in the United States). 25% of women make up jobs in the tech industry — 19% are software developers, and 6% of technology leadership roles (management, etc) are held by women. To compare, 57% of women make up the workforce in the US.
3% of women would consider a career in tech as their first choice.
Nearly 40% of women who obtain engineering degrees quit before ever entering the profession.
In Silicon Valley, some of the wage gaps between men and women can be as large as 61%.
In a StackOverflow survey, only 7% of the responses came from women, and 6% of user profiles on GitHub belong to women.
5% of tech start ups are owned by women.
56% of women leave their jobs midcareer — double the amount of the turnover of men.
In a recent study, 500 women were interviewed on what the top barriers are for them not entering the tech sector.
48% was due to lack of mentors.
42% was due to lack of female role models in the field.
39% was due to gender bias in the workplace.
36% was due to unequal opportunities.
35% was due to unequal pay for the same skills.
With this rate of progress, it will take until 2133 to close the gender gap.
There are many reasons as to why this is. It’s not outlandish to claim that engineering and tech has been dominated by men. Gender stigmas have for a long time pinpointed men as “smarter”, in turn steering women away. Thankfully, the community I have had at Flatiron (my peers, my instructors, and students in other cohorts) 
have never shown me anything other than unconditional support — having a positive and uplifting group of peers is what can help women maintain positions in the field, and have it be a meaningful experience with less turnover and hostility. A huge reason why I ended up choosing Flatiron was due to their commitment to diversity and representation.
With that being said, gender bias does not only affect women — it can affect men in fields such as nursing, education, childcare services, etc. The main difference is that there is often not seen a wide wage gap.
The Improvements
With all of that being said, it would be a disservice if I didn’t highlight the great improvements that are being made in order to welcome more women into the field. Google’s program Women Techmakers provides visibility, community, and resources for women in tech by offering 100 scholarships to women around the world to use towards their technical certifications.
 Girls Who Code is the largest pipeline of future women engineers, with 84% of alumni saying they were likely to pursue a career in tech. HackBright Academy is an engineering school for women that offers 12 week immersive software development with a median first job salary of $88,000.
While this article may seem daunting and paint a depressing picture on the prospect of women in tech, the first step to improvement is having these discussions and spreading awareness. Companies and hiring managers need to assist by being aware of these issues and striving to create a more welcoming and diverse team. A second step would be making coding more accessible for all (minorities including women, disenfranchised communities, etc). 
Communication, access to these resources, and community discourse can help in diversifying the tech field. It’s also important to note that all of these experiences may vary, especially if you’re a woman of color, and recognizing the privilege I have of being able to take several months away to hammer away a new school and have this channel of resources provided to me by Flatiron.
I’m eager to take this journey diving into the disparities that occur in STEM (specifically tech) surrounding gender and race, and I hope you’re willing to take that journey with me!", snaps: 582, read_time: 4 ,  date_created: "January 26th, 2021" , user_id: 1, topic_id: 12)
Story.create(title: "The Who, What, Where, When, and Why on Validations", content: "Validations are a great tool for Rails developers to use when creating projects that include data that needs to be, well, validated! Okay, cool. So why should we use them? They’re mainly used for ensuring the accuracy of specific types of data input (full names, email addresses, usernames, passwords, user IDs, etc), and predominately doing so checking the accuracy of this data input before it is ultimately persisted into the database. 
In other words, a validation will run before the object is fully persisted into the system, to protect us from saving inconsistent data. We can check for presence of a certain attribute, the uniqueness (ex: do two users have the same username?), length (ex: length of a username/password), and the list continues. We have built in validation checkers, but we can also build custom validations that can go beyond the scope of what Active Record conveniently gives us (but more on that later). Hopefully with the above explanation,
     you can quickly realize why the presence of validations are as useful as they are important. So, who can use validations? Anybody who is creating a Rails app! More importantly, anybody who knows how to implement them properly. Here we will discuss in detail on how to use built in validation methods that exist through Active Record, or how to write a custom method based on the data that you are attempting to validate.
    This link will give you a comprehensive list of the built in methods that are available to you, but for the sake of time and this article, we will only be using a couple to showcase how to use them. For example, let’s say that we are creating a social media app, and a user cannot create a profile without a name, a city, or an email address. Rails has a built in method called “presence” that will check the presence of these values within your forms. Where you place the validation is up to what you want to validate, 
    and what class the attributes you want to validate are located. For our example, in the User class we will simply type “validates”, along with the attributes, and set the presence to “true”. Simple enough! In the terminal, you can check the validity of the instance you just created by tacking .valid? at the end of the user. But the average user of our app will not know how to open up the terminal and complete the same process we just did. So how do we show the user if there are any errors? In the create method in your UserController, you can write a conditional statement that basically checks the validity,
         otherwise it will flash error messages to the user that something is not quite correct. The “error.full_messages” are helper methods given to us by Active Record, and will relay to the user the errors that arise.
        Wherever a form input is invalid (or valid), you should redirect it to whatever you believe the happy path should be for the best user experience. In this case, we redirect to the new user path to refill the form, now that the user is aware of their errors! Active Record is very smart and does a lot of work for us, but there will be times where we want something specific to the project we are working on. First, we want to identify what we want to our custom validation to be. Let’s assume that I want to be the only “Sara” on this app. There can be Sarahs, but not another “Sara”! Before we take it back to step 1,
         we must write the method that we will ultimately use in the validation. In the User class, we will write a method containing a conditional that basically says that if we input the name “Sara”, you will see an error message that says “Name can’t be Sara.” Let’s check it out. Above, we were also able to set a custom message that will appear if someone tries to set their name as Sara! Now we will follow the same steps as the original validations we discussed. However, instead of us using “validates”, we will use “validate”, followed by the method that we just created. … that’s pretty much it! You can use an endless amount of validations on your application,
          and they can be customized to whatever suits your application the best. They ensure the accuracy of data that is being entered, and assist with the organization of that data, as well.", snaps: 400, read_time: 5, date_created: "December 6th, 2020", user_id: 1, topic_id: 12)
Story.create(title: "ELI5: ActiveRecord::Edition", content: "If you would have told me that in just two weeks of the Immersive Software Engineering program at Flatiron School that I would actually feel like a “real coder”, then I would have not believed you. The amount of knowledge that I have been able to somewhat comprehend has surprised not only me, but the rest of my cohort.
With that being said, every day brings its (new) challenges, and this week’s hurdle was *drum roll please* ACTIVE RECORD! A week of dozens of OOP labs prepared me for this moment. It took me days of re-reading readme’s, rewatching lectures, and creating my own AR models for me to finally get a greater grasp on its true purpose and why AR is truly a life-saver (and a time-saver).
What is Active Record?
Active Record is a Ruby gem that works as an Object Relational Mapper to help facilitate actions and create databases, better organizing your domain through its models and tables. What does this mean exactly? It helps to represent models within the domain and all of the data associated with it, including associations between those models (think many to many/has many/belongs to). It also assists in creating tables and classes,
 and easily allowing you to or alter them without the tedious work that SQL may have you do manually. 
    Users can also utilize use rake, a popular task runner in Ruby that allows you to automate tasks, and it’s your right-hand-man when navigating Active Record.
     So remember creating tables manually in SQL? Or having to type out attr macros/initialize methods for your classes? Well, with proper AR association macros (we will get to that shortly), those will all be written for you.
    While Active Record does complete a lot of the work for you, it’s still pivotal that you have the proper logic surrounding relationships between models within your domain planned out in order for it to function optimally. Which we will go over… now!
    How do I set it up?
    There are 4 main steps when creating an Active Record domain from scratch:
    Ensure your environment is properly set up.
    Here, you should ask yourself what your domain and models are going to be and what your attributes will be per model. Map this out and be sure about it. Those initial class models must be set up in order for us to create migrations for the tables to be persisted into your database. Set up your classes as normal (minus attr macros and initializers), but add < ActiveRecord::Base after setting up your class. An example:
    With that being said, macros will look a little differently than they do in regular OOP. Instead of using attr readers, writers, and accessors, you will use has_many, belongs_to:, and has_many through (associations we should already be familiar with if you’ve dabbled with OOP before).
        Creating and facilitating migrations.
        Migrations can be a number of things, but in my experience we have mainly used it in order to create tables. Any time you want to create a new migration, you can easily do so by running the rake command
        rake db:create_migration NAME=create_(tablenamehere) in your terminal. When setting up tables, there are a few conventions to remember. Models will remain capitalized (with camelcase if multiple words), and corresponding tables will be lowercase and pluralized. *If you’re unsure of what the plural/singular version of a word is, run this in your terminal! Once the migration is created, it will show up in your file with a series of numbers (a date and timestamp), and the name of your file.
         Here, you can begin migrating your new table into your database. I will post an example below. Once you have your table fully set up, run rake command rake db:migrate, and your table will be migrated into the database.
        You are able to check the status of your migration with rake db:migrate:status, and you can also check the schema in your schema.rb file. It’s very important that you do not alter the schema directly, without “rolling back” the migration you have just made with rake db:rollback. For example, if you made a change two migrations ago, you need to rollback twice in order to make the proper changes. A few more conventions to remember: in AR, the main data types will be integers, strings, text, booleans, and real numbers.
             Those are initiated in the above code, along with their corresponding attributes. When creating migrations, it’s important that you are doing them one by one, creating the migration, filling it out with its attributes, checking the schema, and moving on to the next one.
            Create seeds and use them to test.
            Seeds are basically dummy data that we fill the seeds.rb file with in order to be able to test our data. How else will we know that it works? Having a thorough seed file is crucial to ensure that your methods are correct, and that all of your macros are set up correctly. You are able to test your methods in your console, and also
CRUD — let’s test it out.
CRUD is an acronym for create, read, update, and delete. It should go without saying that it’s important for you to be able to interact with your data. Creating new data could be running Music.new or Music.create to create new instances. Reading means that you are able to interact with and return specific instances within the models: Music.all, Music.first, etc. Updating essentially means that you are able to find and update a specific instance: Music.update. 
Lastly, deleting means that you are able to delete a single row or an entire table with either the .destroy or .destroy_all method.
…and there you have it! Hopefully this will be helpful in terms of getting you more comfortable with how to be able to navigate Active Record.
", snaps: 147, read_time: 6, date_created: "November 8th, 2020", user_id: 1, topic_id: 1)
Story.create(title: "hi", user_id: 1, topic_id: 1)

Story.create(title: "ayeyeye", content: "some content", user_id: 1, topic_id: 1)

Bookmark.create(user_id: 1, story_id: 1)
Bookmark.create(user_id: 2, story_id: 1)

Response.create(content: "Great Blog! ", snaps: 100, story_id: 1)
Response.create(content: "Obsessed... can't wait to read more. ", snaps: 25, story_id: 1)
Response.create(content: "Ah yes I concur ", snaps: 17, story_id: 1)
Response.create(content: "This isn't very good ", snaps: 0, story_id: 1)

Response.create(content: "Love this.", snaps: 12, story_id: 2)
Response.create(content: "yes i love validationssss", snaps: 19, story_id: 2)

Response.create(content: "omg this was so helpful thank you so much", snaps: 49, story_id: 3)
Response.create(content: "active record is cool ", snaps: 29, story_id: 3)
Response.create(content: "haha i luv the office <3", snaps: 30, story_id: 3)

