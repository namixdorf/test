class CreateExternalArticles < ActiveRecord::Migration
  def change
    create_table :external_articles do |t|
      t.string      :title
      t.string      :url
      t.text        :body
      t.belongs_to  :category

      t.timestamps
    end
  end
end
