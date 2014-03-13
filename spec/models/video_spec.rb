# == Schema Information
#
# Table name: videos
#
#  id                  :integer          not null, primary key
#  information         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  source_file_name    :string(255)
#  source_content_type :string(255)
#  source_file_size    :integer
#  source_updated_at   :datetime
#  image_file_name     :string(255)
#  image_content_type  :string(255)
#  image_file_size     :integer
#  image_updated_at    :datetime
#

require 'spec_helper'

describe Video do
  it "has a valid factory" do
    create(:video).should be_valid
  end

  it 'is invalid without a video source' do
    build(:video, source: nil).should_not be_valid
  end

  it 'is invalid without an image' do
    build(:video, image: nil).should_not be_valid
  end
  
end
