class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string      :title
      t.string      :url
      t.belongs_to  :category

      t.timestamps
    end
  end
end
