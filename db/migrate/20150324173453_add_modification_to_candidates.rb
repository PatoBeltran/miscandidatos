class AddModificationToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :modified_by, :text, default: []
  end
end
