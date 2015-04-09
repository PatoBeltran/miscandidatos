# == Schema Information
#
# Table name: political_parties
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  abbreviation :string(255)
#  color        :string(255)
#

class PoliticalParty < ActiveRecord::Base
  has_many :candidates
  validates :name, :abbreviation, :color, presence: true
  scope :with_candidates, includes(:candidates).joins(:candidates)
end
