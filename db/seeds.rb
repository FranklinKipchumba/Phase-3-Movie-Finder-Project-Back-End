
user1 = User.create(email: 'fransoft@gmail.com', password: 'F98687')
user2 = User.create(email: 'monicasasile@gmail.com', password: '667759MS')

Movie.create(title: 'The Shawshank Redemption', year: 1994, description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', user: user1)
Movie.create(title: 'The Godfather', year: 1972, description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', user: user1)
Movie.create(title: 'The Dark Knight', year: 2008, description: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', user: user2)

