require 'pry'

class  Cat 

    @@all = []
    attr_accessor :color, :num_of_legs
    attr_reader :name, :species

    def initialize(name, color, num_of_legs = 4) 
        #set num_of_legs to default then you don't need to supply this argument
        # if you are ok with 4 otherwise you can if num_of_legs != 4
        @name = name 
        @color = color
        @species = "feline"
        @num_of_legs = num_of_legs
        @@all << self
    end

    def self.all
        puts @@all 
    end

    def self.show_all_cats_names
        @@all.map {|cat| cat.name }
    end 

    # def self.cats_with_green_eyes 
    #     @@all.map {|cat| cat.color == "green" ? cat.name : nil }.compact
    # end
    # def self.cats_with_green_eyes 
    #     @@all.map {|cat| cat.name if cat.color == "green"}.compact
    # end

    def self.cats_with_green_eyes 
        @@all.select {|cat| cat.name if cat.color == "green"}
    end
        

    def self.cats_with_green_eyes 
        green_eyes = []
        @@all.map do |cat|
            if(cat.color == "green")
                green_eyes << cat.name
            end
        end
        green_eyes
    end

end

friend1 = Cat.new("foo", "blue")
friend2 = Cat.new("foo2", "green")
friend3 = Cat.new("foo3", "green")

Cat.show_all_cats_names
binding.pry
puts "done"