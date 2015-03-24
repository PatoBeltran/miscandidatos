# == Schema Information
#
# Table name: milestones
#
#  id           :integer          not null, primary key
#  position     :string
#  proposals    :text
#  accomplished :text
#  candidate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  modified_by  :text
#

class Milestone < ActiveRecord::Base
  #Modified_by format: [{user_id: , date: }, ...]
  serialize :modified_by
  belongs_to :candidate
  validates :position, :candidate_id, presence: true
end
