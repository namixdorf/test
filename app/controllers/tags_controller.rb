class TagsController < ApplicationController
  caches_page :index
  def index
    @tag = Tag.find_by_url_slug(params[:tag]).name
    if params[:tag]
      @articles =         Tag.where(url_slug: params[:tag]).where(taggable_type: "Article").order(taggable_type: "DESC")
      @quotes =           Tag.where(url_slug: params[:tag]).where(taggable_type: "Quote").order(id: "RAND()").shuffle
      @videos =           Tag.where(url_slug: params[:tag]).where(taggable_type: "Video").shuffle
      @books =            Tag.where(url_slug: params[:tag]).where(taggable_type: "Book")
      @classrooms =       Tag.where(url_slug: params[:tag]).where(taggable_type: "ClassroomCourse")
      @online_courses =   Tag.where(url_slug: params[:tag]).where(taggable_type: "OnlineCourse")
      @external_videos =  Tag.where(url_slug: params[:tag]).where(taggable_type: "ExternalVideo")
      @inview_articles =  Tag.where(url_slug: params[:tag]).where(taggable_type: "InviewArticle")
      @tools =            Tag.where(url_slug: params[:tag]).where(taggable_type: "Tool")
      @external_articles = Tag.where(url_slug: params[:tag]).where(taggable_type: 'ExternalArticle')
    else
@articles =               Tag.where(taggable_type: "Article")
@quotes =                 Tag.where(taggable_type: "Quote")
      video_count = Video.all.count.to_i
      @videos =           Tag.where(taggable_type: 'Video').limit(video_count)
      @books =            Tag.where(taggable_type: 'Book')
      @classrooms =       Tag.where(taggable_type: "ClassroomCourse")
      @external_videos =  Tag.where(taggable_type: 'ExternalVideo')
      @external_articles = Tag.where(taggable_type: 'ExternalArticle')
    end
  end
end
