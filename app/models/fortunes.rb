class Fortune < ActiveRecord::Base
  has_many :diaries
  has_many :fortunes, through: :diaries

  def self.random
    Fortune.all.sample.quote
  end

  # def self.tea_leaves
  #   "The tea leaves say... #{Fortune.all.sample.quote}"
  # end

end
