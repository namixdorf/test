class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :text
      t.string :author
      t.string :css_class

      t.timestamps
    end
  end
end
