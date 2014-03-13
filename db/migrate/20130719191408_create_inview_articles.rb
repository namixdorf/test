class CreateInviewArticles < ActiveRecord::Migration
  def change
    create_table :inview_articles do |t|
      t.string :title
      t.string :url
      t.belongs_to :category

      t.timestamps
    end
  end
end
