@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

InviewArticle.seed(:id,
  {
    id:          id,
    title:       "Top 10 Leadership Tips for First-time Managers",
    tag_list:    "Growing",
    url:         "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E1-Top-10-Leadership-Tips-for-First.pdf",
    category_id: cat_id("Growing")
  },
  
  
  
  
  
  
  
  
  


  {
    id: id,
    title:      '"Pygmalion in Leadership”, Harvard Business Review',
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-HBR-Pygmalion-in-Management.pdf",
    tag_list:   "Setting",
    category_id: cat_id('Setting')
  },
  {
    id: id,
    title:      "RACI Matrix: A Method for Clarifying Roles and Responsibilities",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-RACI-Matrix-A-Method-to-Clarify-Roles-and-Expectations.pdf",
    tag_list:   "Setting",
    category_id: cat_id('Setting')
  },
  
  
  
  
  
  
  
  
  
  
  
  {
    id: id,
    title:      "Why Middle Managers are Important",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E6-Why-Middle-Managers-are-Important-Article.pdf",
    tag_list:   "Creating",
    category_id: cat_id('Creating')
  },


  
  
  
  
  
  
  



  {
    id: id,
    title:      "Four Career Concepts Every Manager Should Know",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/Four-Career-Concepts-Every-Manager-Should-Know.doc",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  
  
  
  
  
  
  
  
  
  
  
  

  
  
)
