# == Schema Information
#
# Table name: candidates
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  bio                  :text
#  candidate_area_id    :integer
#  political_party_id   :integer
#  geographical_area_id :integer
#  user_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  modified_by          :text             default("--- []\n")
#  image                :string(255)
#

class Candidate < ActiveRecord::Base
  #Modified_by format: [{user_id: , date: }, ...]
  serialize :modified_by
  belongs_to :posted_by, foreign_key: "user_id"
  belongs_to :political_party
  belongs_to :geographical_area
  belongs_to :candidate_area
  has_many :milestones
  validates :name, :bio, :candidate_area, :user_id, presence: true

  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :milestones, allow_destroy: true
end
