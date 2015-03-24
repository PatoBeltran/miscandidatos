class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.text :bio
      t.integer :candidate_area_id
      t.integer :political_party_id
      t.integer :geographical_area_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
