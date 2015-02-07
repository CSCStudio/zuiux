# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  design     :integer          default("0")
#  ux         :integer          default("0")
#  creative   :integer          default("0")
#  content    :integer          default("0")
#

class Rating < ActiveRecord::Base

  FORM_LABELS = { design: '设计', ux: '交互', creative: '创意', content: '内容'}

  validates_presence_of :user, :product
  validates_uniqueness_of :user_id, scope: [:product_id]

  belongs_to :user
  belongs_to :product, touch: true

  # has_many :rating_values, dependent: :destroy

  # accepts_nested_attributes_for :rating_values

  scope :latest, -> {order("created_at desc")}
  scope :product_with_user, ->(product_id, user_id) { where(product_id: product_id, user_id: user_id)}

  def average_value
    (self.design + self.ux)*0.3 + (self.creative + self.content)*0.2
  end
end
