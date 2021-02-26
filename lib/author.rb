require 'pry'

class Author

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|song|song.author==self}
    end
    
    def add_post(post)
        post.author = self

    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        new_post.author = self
        
    end

    def self.post_count
        count = 0
        Post.all.each do |song|
            if song.author
                count += 1
            end
        end
        count
    end

    









end