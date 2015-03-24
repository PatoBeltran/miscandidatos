class AddModificationToCandidatesAndMilestones < ActiveRecord::Migration
  def change
    add_column :candidates, :modified_by, :text
    add_column :milestones, :modified_by, :text
  end
end
