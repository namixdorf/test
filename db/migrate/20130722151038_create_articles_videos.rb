class CreateArticlesVideos < ActiveRecord::Migration
  def change
    create_table :linkers do |t|
      t.belongs_to :article
      t.belongs_to :video
    end
  end
end
