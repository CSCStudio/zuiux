class Rating < ActiveRecord::Base

  belongs_to :user
  belongs_to :product
  belongs_to :round

  validates_presence_of :user, :product, :round
  validates_uniqueness_of :user_id, scope: [:product_id, :round_id]
end
