# == Schema Information
#
# Table name: candidate_areas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CandidateArea < ActiveRecord::Base
  has_many :candidates
  validates :name, presence: true
end
