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
    new_fortune = Fortune.all.sample
    puts "Does your future hold a passionate romance?...#{new_fortune.quote}"
    Diary.create(user_id: self.id, fortune_id: new_fortune.id)
  end

  def wealth
    puts "Wealth and riches are forthcoming...#{Fortune.all.sample.quote}"
  end

  def career
    puts "Yes, many have questions about their career...#{Fortune.all.sample.quote}"
  end

  def saved_love
    self.fortunes.select {|fortune| fortune.fortune_type == "love"}
  end

  def love_quotes
    self.saved_love.map{|fortune| fortune.quote}
  end

  def saved_wealth
    self.fortunes.select {|fortune| fortune.fortune_type == "wealth"}
  end

  def wealth_quotes
    self.saved_wealth.map {|fortune| fortune.quote }
  end

  def saved_career
    self.fortunes.select {|fortune| fortune.fortune_type == "career"}
  end

  def career_quotes
    self.saved_career.map {|fortune| fortune.quote}
  end

end
