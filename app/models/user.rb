class User < ActiveRecord::Base
  has_many :diaries
  has_many :fortunes, through: :diaries

  def fortune_quotes
    self.fortunes.map {|fortune| fortune.quote}.uniq
  end

  def num_fortunes
    self.fortune_quotes.count
  end

  def create_new_diary
    Diary.create(user_id: self.id, fortune_id: Fortune.all.sample.id)
  end

  def destroy_last
    self.fortunes.last.destroy
  end

  def love
    "Does your future hold a passionate romance?... #{Fortune.all.sample.quote}"
  end

  def wealth
    "Wealth and riches are forthcoming... #{Fortune.all.sample.quote}"
  end

  def career
    "Yes, many have questions about their career... #{Fortune.all.sample.quote}"
  end

end
