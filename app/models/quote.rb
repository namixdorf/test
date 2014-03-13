class Quote < ActiveRecord::Base
  has_many :tags, as: :taggable
  has_many :articles
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).articles
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
