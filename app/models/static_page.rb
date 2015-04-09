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

class StaticPage < ActiveRecord::Base
  #Modified_by format: [{user_id: , date: }, ...]
  serialize :modified_by

  validates :name, :content, :title, presence: true
end
