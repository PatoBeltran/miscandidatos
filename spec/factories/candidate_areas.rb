# == Schema Information
#
# Table name: candidate_areas
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :candidate_area do
    type ""
  end

end
