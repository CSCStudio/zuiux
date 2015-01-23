# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rating < ActiveRecord::Base

  # validates_presence_of :user, :product
  # validates_uniqueness_of :user_id, scope: [:product_id]

  belongs_to :user
  belongs_to :product

  has_many :rating_values

  accepts_nested_attributes_for :rating_values
end
