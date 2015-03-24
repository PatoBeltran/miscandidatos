class CreateGeographicalAreas < ActiveRecord::Migration
  def change
    create_table :geographical_areas do |t|
      t.string :state
      t.string :city

      t.timestamps null: false
    end
  end
end
