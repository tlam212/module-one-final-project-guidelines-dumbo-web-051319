class User < ActiveRecord::Base
  has_many :diaries
  has_many :fortunes, through: :diaries

  def fortune_quotes
    self.fortunes.map {|fortune| fortune.quote}.uniq
  end

  def create_new_diary
    Diary.create(user_id: self.id, fortune_id: Fortune.all.sample.id)
  end

end
