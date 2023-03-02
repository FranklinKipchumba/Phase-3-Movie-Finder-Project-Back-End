class Reviews < ActiveRecord::Base
    belongs_to :user
    belongs_to :movie
  
    def print_review
      puts "Review for #{movie.title} by #{user.user_name}#{user.email}: #{star_rating}. #{comment}"
    end
  
    def self.average_rating
      average(:star_rating)
    end
end