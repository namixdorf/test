class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string      :title
      t.string      :url
      t.string      :author
      t.belongs_to  :category

      t.timestamps
    end
  end
end
