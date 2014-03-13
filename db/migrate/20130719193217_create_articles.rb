class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string    :title
      t.text      :headline
      t.text      :body
      t.text      :body_2
      t.text      :featured_quote
      t.string    :quote_credit
      t.integer   :category_id
      t.datetime  :publication_date
      t.string    :url_slug
      t.attachment :thumbnail
      t.attachment :image
      t.integer   :quote_id

      t.timestamps
    end
    add_index :articles, :title
    add_index :articles, :url_slug
  end
end
