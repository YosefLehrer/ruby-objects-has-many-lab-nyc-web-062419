class Author

    attr_accessor :name

    def initialize(name)

        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post_name)
        var = Post.new(post_name)
        @posts << var 
        var.author = self
    end

    def self.post_count
        Post.all.length
    end
    def name
        @name
    end

end