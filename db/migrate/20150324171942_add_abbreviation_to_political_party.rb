class AddAbbreviationToPoliticalParty < ActiveRecord::Migration
  def change
    add_column :political_parties, :abbreviation, :string
  end
end
