class CreateTag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :url_slug
      t.references :taggable, polymorphic: true
      t.timestamps
    end
  end
end
