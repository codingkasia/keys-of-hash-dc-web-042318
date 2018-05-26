class User

attr_reader :username, :tweets
attr_accessor 


def initialize(username)
    @username = username
    #@tweets = [] => instead of creating a separate array of tweets that
    #will hold only my tweets we will keep all the tweets under Tweet class and retrieve accordingly 
end 


def post_tweet(content)
    #takes a content
    #creates a new tweet
    #adds to user's tweet collection
    Tweet.new(content, self)
end

def get_tweets
    #Tweet.all.map {|tweet| tweet.content if tweet.user == self }.compact #get my tweets
    Tweet.all.select {|tweet| tweet.user == self} #get all my tweets with all the info as tweet id, name and tweet
end

def like_tweet(tweet)
    Like.new(self, tweet)
end

def likers
    #go through all liked tweets
    #select those that an instance of the user class liked
    Like.all.map {|like| like.user == self }.compact
end

def liked_tweets
    #to return a collection of tweet instances that this user liked
end

end




