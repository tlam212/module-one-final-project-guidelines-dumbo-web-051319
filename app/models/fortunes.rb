class Fortune < ActiveRecord::Base
  has_many :diarys
  has_many :fortunes, through: :diarys
end
