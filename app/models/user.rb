class User < ActiveRecord::Base
  has_many :diaries
  has_many :fortunes, through: :diaries
end
