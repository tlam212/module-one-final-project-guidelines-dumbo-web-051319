# 15.times do
#   User.create(name: Faker::Name.unique.first_name, password: 'password')
# end
#
# 15.times do
#   Fortune.create(quote: Faker::TvShows::TwinPeaks.unique.quote)
# end
#
# 15.times do
#   Fortune.create(quote: Faker::TvShows::GameOfThrones.unique.quote)
# end
#
# 15.times do
#   Fortune.create(quote: Faker::TvShows::Simpsons.unique.quote)
# end
#
# # 15.times do
# #    Fortune.create(quote: Faker::TvShows::BojackHorseman.unique.quote)
# # end
#
# 15.times do
#   Fortune.create(quote: Faker::TvShows::Buffy.unique.quote)
# end
#
# 15.times do
#   Fortune.create(quote: Faker::GreekPhilosophers.unique.quote)
# end

Diary.create(user_id: 1, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 2, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 3, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 4, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 5, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 6, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 7, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 8, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 9, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 10, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 11, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 12, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 13, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 14, fortune_id: Fortune.all.sample.id)
Diary.create(user_id: 15, fortune_id: Fortune.all.sample.id)
