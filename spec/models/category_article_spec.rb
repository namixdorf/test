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

require 'spec_helper'

describe CategoryArticle do
  it "has a valid factory" do
    create(:category_article).should be_valid
  end

  it "is invalid without a title" do
    build(:category_article, title: nil).should_not be_valid
  end

  it "is invalid with a blank title" do
    build(:category_article, title: "").should_not be_valid
  end

  it "is invalid without into text" do
    build(:category_article, intro: nil).should_not be_valid
  end

  it "is invalid with blank into text" do
    build(:category_article, intro: "").should_not be_valid
  end

  it "is invalid without a publication name" do
    build(:category_article, publication: nil).should_not be_valid
  end

  it "is invalid with a blank publication name" do
    build(:category_article, publication: "").should_not be_valid
  end

end
