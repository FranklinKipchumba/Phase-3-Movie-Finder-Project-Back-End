User.destroy_all
Movie.destroy_all
puts "Seeding spices...."
user1 = User.create(user_name:"Frank Soft", email: 'fransoft@gmail.com', password: 'F98687')
user2 = User.create(user_name:"Monica Sasile", email: 'monicasasile@gmail.com', password: '667759MS')

movie1 = Movie.create(title: 'The Shawshank Redemption', year: 1994, description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', user: user1)
movie2 = Movie.create(title: 'The Godfather', year: 1972, description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', user: user1)
movie3 = Movie.create(title: 'The Dark Knight', year: 2008, description: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', user: user2)

Reviews.create(user_id: user1.id, movie_id: movie1.id, star_rating: 4, comment: "Nice product")
Reviews.create(user_id: user2.id, movie_id: movie2.id, star_rating: 5, comment: "Great product")
Reviews.create(user_id: user1.id, movie_id: movie3.id, star_rating: 3, comment: "OK product")

puts "✅ Done seeding!"