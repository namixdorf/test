# == Schema Information
#
# Table name: articles
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  headline           :text
#  body               :text
#  featured_quote     :text
#  category_id        :integer
#  publication_date   :datetime
#  url_slug           :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'spec_helper'

describe Article do
  it 'has a valid factory' do
    create(:article).should be_valid
  end

  it "is invalid without a title" do
    build(:article, title: nil).should_not be_valid
  end

  it "is invalid with a blank title" do
    build(:article, title: "").should_not be_valid
  end

  it "is invalid without a body" do
    build(:article, body: nil).should_not be_valid
  end
  
  it "is invalid with a blank body" do
    build(:article, body: "").should_not  be_valid
  end

  it "is invalid without headline text" do
    build(:article, headline: nil).should_not be_valid
  end

  it "is invalid with blank headline text" do
    build(:article, headline: "").should_not be_valid
  end

  it "is doesn't save an image that isn't an actual image" do 
    build(:article, image: File.open(Rails.root.join("spec/factories/assets/not_an_image.txt"))).should_not be_valid
  end
  
end
