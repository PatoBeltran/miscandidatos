# == Schema Information
#
# Table name: milestones
#
#  id           :integer          not null, primary key
#  position     :string(255)
#  proposals    :text
#  accomplished :text
#  candidate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Milestone < ActiveRecord::Base
  belongs_to :candidate
  validates :position, presence: true
end
