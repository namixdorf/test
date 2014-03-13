class Tag < ActiveRecord::Base
  before_save :create_url_slug
  attr_accessible :name
  belongs_to :taggable, polymorphic: true
  
  private
  def create_url_slug
    self.url_slug = name.parameterize
  end
end