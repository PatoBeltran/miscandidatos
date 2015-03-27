# == Schema Information
#
# Table name: static_pages
#
#  id          :integer          not null, primary key
#  name        :string
#  title       :string
#  content     :text
#  modified_by :text             default("--- []\n")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :static_page do
    name "MyString"
content "MyText"
modified_by "MyText"
  end

end
