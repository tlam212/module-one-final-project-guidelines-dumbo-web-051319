15.times do
  User.create(name: Faker::Name.unique.first_name)
end

15.times do
  Fortune.create(quote: " #{Faker::TvShows::TwinPeaks.unique.quote}")
end

15.times do
  Fortune.create(quote: Faker::TvShows::GameOfThrones.unique.quote)
end

15.times do
  Fortune.create(quote: Faker::TvShows::Simpsons.unique.quote)
end

15.times do
  Fortune.create(quote: Faker::TvShows::BojackHorseman.unique.quote)
end

15.times do
  Fortune.create(quote: Faker::TvShows::Buffy.unique.quote)
end
