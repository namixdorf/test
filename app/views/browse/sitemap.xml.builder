xml.instruct! :xml, :version => '1.0', :encoding => 'UTF-8'

xml.urlset :xmlns => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  
  # sample entry for a URL - do this for every URL you want indexed
  # xml.url do
  #   xml.loc       'http://www.yoursite.com/full-path-here'
  #   xml.lastmod   Date.today.strftime("%Y-%m-%d")
  #   xml.changefreq  'monthly' # always|hourly|daily|weekly|monthly|yearly|never
  #   xml.priority    0.5       # 0.0 - 1.0 - importance of this page vs. others
  # end

end

