class Product < ActiveRecord::Base

  has_many :ratings
  has_many :products_rounds

end
