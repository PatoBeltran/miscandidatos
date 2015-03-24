# == Schema Information
#
# Table name: political_parties
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  abbreviation :string
#

class PoliticalParty < ActiveRecord::Base
  has_many :candidates
  validates :name, :abbreviation, presence: true
end
