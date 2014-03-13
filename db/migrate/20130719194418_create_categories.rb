class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :full_name
      t.string :short_name
      t.string :tab_name

      t.timestamps
    end
  end
end
