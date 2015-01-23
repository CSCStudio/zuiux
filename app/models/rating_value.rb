# == Schema Information
#
# Table name: rating_values
#
#  rating_id  :integer
#  value      :float(24)        default("0")
#  rate_type  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RatingValue < ActiveRecord::Base

  enum rate_type: [ :design, :ux, :creative, :content ]
  belongs_to :rating, touch: true
end
