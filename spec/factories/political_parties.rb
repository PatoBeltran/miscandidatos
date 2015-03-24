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

FactoryGirl.define do
  factory :political_party do
    name "MyString"
  end

end
