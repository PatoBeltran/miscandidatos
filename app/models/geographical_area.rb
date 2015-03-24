# == Schema Information
#
# Table name: geographical_areas
#
#  id         :integer          not null, primary key
#  state      :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GeographicalArea < ActiveRecord::Base
  has_many :candidates
  validates :state, :city, presence: true
end
