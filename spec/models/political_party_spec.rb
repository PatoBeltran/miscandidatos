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

require 'rails_helper'

RSpec.describe PoliticalParty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
