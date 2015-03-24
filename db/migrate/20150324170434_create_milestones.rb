class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :position
      t.text :proposals
      t.text :accomplished
      t.integer :candidate_id

      t.timestamps null: false
    end
  end
end
