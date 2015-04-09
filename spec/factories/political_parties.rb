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

FactoryGirl.define do
  factory :political_party do
    name "MyString"
  end

end
