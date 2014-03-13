class Video < ActiveRecord::Base
  
  belongs_to :category
  has_many :tags, as: :taggable 
  has_many :videos, through: :linkers
  
  has_attached_file :mp4, :url => "/content/videos/:id/:basename.:extension"
  
  validates_attachment_presence :mp4
  validates_attachment_content_type :mp4, :content_type => ['video/mp4']
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).videos
  end

  def self.tag_counts
    Tag.select("tags.*, count(tags.name) as count").group("tags.name")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).create!
    end
  end
  
  def image
    "/content/thumbnails/#{self.image_name}"
  end
  
  def self.landing_page_video
    self.where(landing_page_video: true)
  end
  
end