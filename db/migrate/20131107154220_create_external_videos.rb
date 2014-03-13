class CreateExternalVideos < ActiveRecord::Migration
  def change
    create_table :external_videos do |t|
      t.string :title
      t.string :url
      t.belongs_to :category

      t.timestamps
    end
  end
end
