# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  full_name  :text
#  short_name :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :full_name, :short_name
  has_many :articles
  has_many :category_articles
  has_many :videos
  has_many :books
  has_many :online_courses
  has_many :classroom_courses
  has_many :tools
  has_many :inview_articles
  has_many :external_articles
  has_many :external_videos

  validates :full_name, presence: true
  validates :short_name, presence: true

  def to_param
    short_name.parameterize
  end

  def self.find_from_url(name)
    self.where("lower(short_name) = ?", name.downcase).first
  end
end
