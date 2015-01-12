class ProductRound < ActiveRecord::Base
  belongs_to :product
  belongs_to :round
end
