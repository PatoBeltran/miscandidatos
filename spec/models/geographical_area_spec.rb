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

require 'rails_helper'

RSpec.describe GeographicalArea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
