# == Schema Information
#
# Table name: candidates
#
#  id                   :integer          not null, primary key
#  name                 :string
#  bio                  :text
#  candidate_area_id    :integer
#  political_party_id   :integer
#  geographical_area_id :integer
#  user_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  modified_by          :text
#

FactoryGirl.define do
  factory :candidate do
    name "MyString"
  end

end
