class Round < ActiveRecord::Base
  has_many :products_rounds
  has_many :ratings
end
