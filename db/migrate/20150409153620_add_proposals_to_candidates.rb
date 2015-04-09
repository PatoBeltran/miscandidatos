class AddProposalsToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :proposals, :text
  end
end
