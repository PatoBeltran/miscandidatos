# == Schema Information
#
# Table name: static_pages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  title       :string(255)
#  content     :text
#  modified_by :text             default("--- []\n")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe StaticPage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
