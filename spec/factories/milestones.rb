# == Schema Information
#
# Table name: milestones
#
#  id           :integer          not null, primary key
#  position     :string(255)
#  proposals    :text
#  accomplished :text
#  candidate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :milestone do
    position "MyString"
proposals "MyText"
accomplished "MyText"
  end

end
