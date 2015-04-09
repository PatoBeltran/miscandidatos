# == Schema Information
#
# Table name: geographical_areas
#
#  id         :integer          not null, primary key
#  state      :string(255)
#  city       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string(255)
#

class GeographicalArea < ActiveRecord::Base
  has_many :candidates
  validates :state, :city, :color, presence: true
  scope :with_candidates, includes(:candidates).joins(:candidates)
end
