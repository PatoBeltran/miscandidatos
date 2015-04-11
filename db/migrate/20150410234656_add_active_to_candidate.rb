class AddActiveToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :active, :boolean, default: true
  end
end
