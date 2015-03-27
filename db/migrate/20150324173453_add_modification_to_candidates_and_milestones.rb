class AddModificationToCandidatesAndMilestones < ActiveRecord::Migration
  def change
    add_column :candidates, :modified_by, :text, default: []
    add_column :milestones, :modified_by, :text, default: []
  end
end
