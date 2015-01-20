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

require 'rails_helper'

RSpec.describe RatingValue, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
