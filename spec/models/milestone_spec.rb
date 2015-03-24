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

require 'rails_helper'

RSpec.describe Milestone, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
