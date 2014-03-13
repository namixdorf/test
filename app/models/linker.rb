class Linker < ActiveRecord::Base
  belongs_to :article
  belongs_to :video
end
