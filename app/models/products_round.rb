class ProductsRound < ActiveRecord::Base
  belongs_to :product
  belongs_to :rounds
end
