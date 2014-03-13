class Article < ActiveRecord::Base
  before_create :save_url_slug

  attr_accessible :title, :body, :headline, :featured_quote, :image, :category_id
  has_attached_file :image, styles: { full: "928x265>" }, :default_url => "/images/:style/missing.jpg"
  has_attached_file :thumbnail, style: { full: "80x80>" }

  has_many :tags, as: :taggable 
  belongs_to :category
  has_many :videos, through: :linkers
  has_many :linkers
  belongs_to :quote

  validates :title, presence: true
  validates :headline, presence: true
  validates :body, presence: true
  validates :image, attachment_content_type: { content_type: /^image\/(png|gif|jpeg|jpg)/ }

  def to_param
    title.parameterize
  end

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

  private

  def save_url_slug
    self.url_slug = title.parameterize
  end
end
