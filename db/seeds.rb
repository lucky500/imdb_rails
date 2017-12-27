#User.destroy_all
User.create!([
    {
        email: 'user1@test.com',
        password: '123456',
        password_confirmation: '123456',
    },
    {
        email: 'user2@test.com',
        password: '123456',
        password_confirmation: '123456',
    },
    {
        email: 'user3@test.com',
        password: '123456',
        password_confirmation: '123456',
    },
    {
        email: 'user4@test.com',
        password: '123456',
        password_confirmation: '123456',
    },
    {
        email: 'user5@test.com',
        password: '123456',
        password_confirmation: '123456',
    }
])

Category.create!([
  {
    name: 'Drama'
  },
  {
    name: 'Mistery'
  },
  {
    name: 'Romance'
  },
  {
    name: 'Crime'
  },
  {
    name: 'Indie'
  },
  {
    name: 'Thriller'
  }
])


Movie.create!([
  { 
    title: 'The Intouchables',
    description: 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.',
    director: 'Olivier Nakache & Eric Toledano',
    user_id: 3,
    category_id: 1,
    movie_img: URI.parse("https://upload.wikimedia.org/wikipedia/en/9/93/The_Intouchables.jpg")
  },
  { 
    title: 'The Shawshank Redemption',
    description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
    director: 'Frank Darabont',
    user_id: 3,
    category_id: 3,
    movie_img: URI.parse("https://images-na.ssl-images-amazon.com/images/I/519NBNHX5BL._SY445_.jpg")
  },
  { 
    title: 'Pulp Fiction',
    description: 'Jules Winnfield and Vincent Vega are two hit men who are out to retrieve a suitcase stolen from their employer, mob boss Marcellus Wallace.',
    director: 'Quentin Tarantino',
    user_id: 1,
    category_id: 1,
    movie_img: URI.parse("http://adrianjonklaas.com/wp-content/uploads/2016/04/Pulp-Fiction-Movie-Poster-1.png")
  },
  { 
    title: 'City of God',
    description: 'Two boys growing up in a violent neighborhood of Rio de Janeiro take different paths: one becomes a photographer, the other a drug dealer.',
    director: 'Fernando Meirelles',
    user_id: 2,
    category_id: 1,
    movie_img: URI.parse("https://cameronmoviesandtv.files.wordpress.com/2015/04/city-of-god-poster.jpg")
  },
  { 
    title: 'Memento',
    description: "Leonard (Guy Pearce) is tracking down the man who raped and murdered his wife. The difficulty, however, of locating his wife's killer is compounded by the fact that he suffers from a rare, untreatable form of memory loss.",
    director: 'Christopher Nolan',
    user_id: 3,
    category_id: 6,
    movie_img: URI.parse("https://jackflacco.files.wordpress.com/2015/06/guy-pearce-memento-christopher-nolan.jpg")
  },
  { 
    title: 'Lady Bird',
    description: 'Marion McPherson, a California nurse, works tirelessly to keep her family afloat after her husband loses his job. She also maintains a turbulent bond with a teenage daughter who is just like her -- loving, strong-willed and deeply opinionated.',
    director: 'Greta Gerwig',
    user_id: 3,
    category_id: 1,
    movie_img: URI.parse("https://images-na.ssl-images-amazon.com/images/M/MV5BMjg1NDY0NDYzMV5BMl5BanBnXkFtZTgwNzIwMTEwNDI@._V1_UY1200_CR91,0,630,1200_AL_.jpg")
  },
  { 
    title: 'Manchester by the Sea',
    description: 'After the death of his older brother Joe, Lee Chandler (Casey Affleck) is shocked that Joe has made him sole guardian of his teenage nephew Patrick. Taking leave of his job as a janitor in Boston, Lee reluctantly returns to Manchester-by-the-Sea, the fishing village where his working-class family...',
    director: 'Kenneth Lonergan',
    user_id: 4,
    category_id: 1,
    movie_img: URI.parse("https://images-na.ssl-images-amazon.com/images/I/91ixFqzAwtL._RI_.jpg")
  },
  { 
    title: 'Lost in Translation',
    description: 'A lonely, aging movie star named Bob Harris (Bill Murray) and a conflicted newlywed, Charlotte (Scarlett Johansson), meet in Tokyo. Bob is there to film a Japanese whiskey commercial; Charlotte is accompanying her celebrity-photographer husband. Strangers in a foreign land, the two find escape.',
    director: 'Sofia Coppola',
    user_id: 2,
    category_id: 3,
    movie_img: URI.parse("https://upload.wikimedia.org/wikipedia/en/4/4c/Lost_in_Translation_poster.jpg")
  }
])



movie_id = Movie.pluck(:id)
#property_id_to_i = property_id.collect{|i| i.to_i}
20.times do
  Review.create!([{
    rating: Random.rand(1..5),
    comment: Faker::Lorem.paragraph(2, true, 4),
    movie_id: movie_id.sample,
    user_id: Random.rand(1..4)
  }])
end

