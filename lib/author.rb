class Author

attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def posts 
        Post.all.select do |title|
            title.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        Post.all.map do |post|
            post.title
        end.count
    end






end