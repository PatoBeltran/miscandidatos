# == Schema Information
#
# Table name: geographical_areas
#
#  id         :integer          not null, primary key
#  state      :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :geographical_area do
    state "MyString"
city "MyString"
  end

end
