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

require 'rails_helper'

RSpec.describe PoliticalParty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
