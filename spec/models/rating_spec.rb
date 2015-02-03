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

require 'rails_helper'

RSpec.describe Rating, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
