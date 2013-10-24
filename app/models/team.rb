class Team < ActiveRecord::Base
  has_many :headlines
  has_many :users
end
