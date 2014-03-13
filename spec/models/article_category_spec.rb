require 'spec_helper'

describe "Article and Category Relationship" do
  before(:each) do
    @category1 = create(:category, short_name: "Grow")
    @category2 = create(:category, short_name: "Coach")
    @article1 = create(:article, title: "First Title")
    @article2 = create(:article, title: "Second Title")
    @article3 = create(:article, title: "Third Title")
  end

  it "should know that it doesn't have any articles" do
    @category1.articles.count.should == 0
  end

  it "has a collection of articles" do
    @category1.articles << @article1
    @category1.articles.count.should == 1
  end

  it 'has articles that know what category they belong to' do
    @category1.articles << @article2
    @article2.category.should == @category1
  end

  it 'Articles only belong to one category' do
    @category1.articles << @article2
    @category2.articles << @article2
    @article2.category.should == @category2
    @article2.category.should_not == @category1
  end

  it "Categories can have multiple articles" do
    @category1.articles << @article1
    @category1.articles << @article2
    @category1.articles.should == [@article1, @article2]
  end

end
