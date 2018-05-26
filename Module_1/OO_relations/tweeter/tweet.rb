class Tweet
    attr_reader :content, :user, :all
    attr_accessor 
    @@all =[]

    def initialize(content, user)
        @content = content
        @user = user 
        ##self.user.tweets << self =>getting read of this because we don't need 
        #to create a separate tweets arrays for individual users instead we have one big array
        #which we can loop through to retrieve user or/and content
        @@all << self

    end
    
    def self.all
        @@all 
    end

    def username 
        self.user
    end










end