class CreateCandidateAreas < ActiveRecord::Migration
  def change
    create_table :candidate_areas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
