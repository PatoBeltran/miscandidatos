class AddColorToPoliticalParties < ActiveRecord::Migration
  def change
    add_column :political_parties, :color, :string
  end
end
