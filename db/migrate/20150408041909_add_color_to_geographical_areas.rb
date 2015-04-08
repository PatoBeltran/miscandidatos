class AddColorToGeographicalAreas < ActiveRecord::Migration
  def change
    add_column :geographical_areas, :color, :string
  end
end
