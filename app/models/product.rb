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
#  round_id    :integer
#  best        :boolean
#

class Product < ActiveRecord::Base

  validates :name, :description, presence: true
  validates :url, format: URI::regexp(%w(http https))

  belongs_to :user
  belongs_to :round
  has_many :ratings
  has_many :images, as: :attachable, dependent: :destroy

  accepts_nested_attributes_for :images ,:allow_destroy => true

  scope :bests, -> { where(best: true)}

  def scores
    ratings = self.ratings.to_a
    length = ratings.length
    return Hash.new(0.00) if length == 0
    [:design, :ux, :creative, :content, :average_value ].inject({}) {| result, k | result[k] = ratings.send(:sum, &:"#{k}").to_f/length; result }
  end

end
