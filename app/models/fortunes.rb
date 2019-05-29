class Fortune < ActiveRecord::Base
  has_many :diaries
  has_many :users, through: :diaries

  def self.random
    Fortune.all.sample.quote
  end

  def user_names
    self.users.map {|user| user.name}
  end

end
