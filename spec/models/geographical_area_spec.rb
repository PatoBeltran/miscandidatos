# == Schema Information
#
# Table name: geographical_areas
#
#  id         :integer          not null, primary key
#  state      :string(255)
#  city       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string(255)
#

require 'rails_helper'

RSpec.describe GeographicalArea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
