# == Schema Information
#
# Table name: rounds
#
#  id       :integer          not null, primary key
#  start_at :datetime
#  end_at   :datetime
#

class Round < ActiveRecord::Base
  has_many :products, dependent: :nullify
end
