# == Schema Information
#
# Table name: category_articles
#
#  id                 :integer          not null, primary key
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  title              :string(255)
#  intro              :text
#  link               :string(255)
#  author             :string(255)
#  publication        :string(255)
#  published_date     :date
#  category_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class InviewArticle < ActiveRecord::Base
  attr_accessible :title, :url
  belongs_to :category
  has_many :tags, as: :taggable 
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).inview_articles
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
end
