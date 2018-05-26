class Like

    attr_reader :user, :tweet
    attr_accessor 
    
    @@all = []

    def initialiaze(user, tweet)
        @user = user
        @tweet = tweet
        @@all << self
    end

    def self.all
        @@all
    end   
end