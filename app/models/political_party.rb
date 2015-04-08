# == Schema Information
#
# Table name: political_parties
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  abbreviation :string
#  color        :string(255)
#

class PoliticalParty < ActiveRecord::Base
  has_many :candidates
  validates :name, :abbreviation, :color, presence: true
  scope :with_candidates, joins(:candidates)
end
