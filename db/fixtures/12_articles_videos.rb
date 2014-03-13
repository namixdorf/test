Linker.seed do |a|
  a.id          = 1
  a.article_id  = Article.find_by_title("Make it Meaningful").id
  a.video_id    = Video.find_by_mp4_file_name("CreatingaGreatPlace_Staples_2.mp4").id
end

Linker.seed do |a|
  a.id          = 2
  a.article_id  = Article.find_by_title("Thank You and Beyond").id
  a.video_id    = Video.find_by_mp4_file_name("CreatingaGreatPlace_Klink_2.mp4").id
end

Linker.seed do |a|
  a.id          = 3
  a.article_id  = Article.find_by_title("Thank You and Beyond").id
  a.video_id    = Video.find_by_mp4_file_name("CreatingaGreatPlace_Staples_1.mp4").id
end

Linker.seed do |a|
  a.id          = 4
  a.article_id  = Article.find_by_title("Learning: It's So Hot Right Now").id
  a.video_id    = Video.find_by_mp4_file_name("GrowingOurOwnSkills_Lisenby_2.mp4").id
end