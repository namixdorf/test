class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      
      t.belongs_to :category
      
      t.boolean   :landing_page_video
      t.string    :image_name
      t.string    :hashcode
      t.string    :mp4_file_name
      t.string    :mp4_content_type
      t.integer   :mp4_file_size
      t.datetime  :mp4_updated_at
      
      t.timestamps
    end
  end
end
