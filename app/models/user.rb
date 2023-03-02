class User < ActiveRecord::Base
  has_many :reviews
  has_many :movie, through: :reviews

  def favorite_movie
    reviews.order(star_rating: :desc).first.movie
  end

  def remove_reviews(product)
    reviews.where(movie_id: movie.id).delete_all
  end

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
end
