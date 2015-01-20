# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string(255)
#  url         :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base

  validates :name, :description, presence: true
  validates :url, format: URI::regexp(%w(http https))

  belongs_to :user
  has_many :ratings

end
