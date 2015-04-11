# == Schema Information
#
# Table name: candidates
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  bio                  :text
#  candidate_area_id    :integer
#  political_party_id   :integer
#  geographical_area_id :integer
#  user_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  modified_by          :text             default("--- []\n")
#  image                :string(255)
#  proposals            :text
#  active               :boolean          default(TRUE)
#

require 'rails_helper'

RSpec.describe Candidate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
