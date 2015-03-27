class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :name
      t.string :title
      t.text :content
      t.text :modified_by, default: []

      t.timestamps null: false
    end
  end
end
