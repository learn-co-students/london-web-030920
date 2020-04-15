class Destination < ApplicationRecord
has_many :posts
has_many :bloggers, through: :posts


def most_recent_five
    self.posts.last(5)
end

def featured_post
    self.posts.max_by{|post| post.likes}
end

def average_age_of_blogger
    if   self.bloggers.length > 0
    self.bloggers.uniq.map{|blogger| blogger.age}.sum / self.bloggers.uniq.count
      else
        0
      end
end


end
