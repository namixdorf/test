require 'spec_helper'

describe "Articles to Video Relationships" do
  before(:all) do
    @article1 = create(:article, title: "First title")
    @article2 = create(:article, title: "Second title")
    @video1 = create(:video, information: "Video one")
    @video2 = create(:video, information: "Video two")
  end

  it "should recognize an article that has no videos" do
    @article1.videos.count.should == 0
  end

  it "should be able to recognize an articles video" do
    @article1.videos << @video1
    @article1.videos.count.should == 1
  end

  it "a video should recognize the article it is associated with" do
    @article1.videos << @video1
    @video1.articles.count.should == 1
  end

  it "a video should be able to be associated with multiple articles" do
    @article1.videos << @video2
    @article2.videos << @video2
    
    @video2.articles.count.should == 2
  end
  
end
