class Blogger < ApplicationRecord

   has_many :posts
   has_many :destinations, through: :posts 

   validates :name, uniqueness: true
   validates :age, numericality: {minimum: 1}
   validates :bio, length: {minimum: 30}


   def total_likes
      self.posts.map{|post| post.likes}.sum
   end

   def featured_post
      self.posts.max_by{|post| post.likes}
   end

   def top_five_destinations
    self.destinations.sort_by {|destination| destination.posts.count }.last(5)
   end


end
