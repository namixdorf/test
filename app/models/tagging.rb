class Tagging < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
  attr_accessible :tag
end
