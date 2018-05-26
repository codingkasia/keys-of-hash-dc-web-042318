#one-to-many relationship => on user has many tweets
#tweet might belong only to one user


require_relative "./user.rb"
require_relative "./tweet.rb" 
require_relative "./like.rb" 
require 'pry'

coffee_dad = User.new("coffee-dad")
codingkasia = User.new("coding-kasia")
tweet4 = Tweet.new("kasia's first tweet", codingkasia)
tweet1 = Tweet.new("tweet 1", coffee_dad)
tweet2 = Tweet.new("kasia's second tweet", codingkasia)
tweet3 = Tweet.new("tweet 3", coffee_dad)
# coffee_dad.post_tweet("This is a new tweet!")
# codingkasia.like_tweet(tweet1)
# codingkasia.like_tweet(tweet2)

binding.pry
puts "done"