@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

ExternalVideo.seed(:id,
  {
    id: id,
    title:      "How Great Leaders Inspire Action: TED Talks",
    url:        "http://www.ted.com/talks/simon_sinek_how_great_leaders_inspire_action.html",
    tag_list:   'Growing',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "John Wooden on the difference between Winning and Success",
    url:        "http://www.ted.com/talks/lang/en/john_wooden_on_the_difference_between_winning_and_success.html",
    tag_list:   "Coaching",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "Overview on Four Disciplines of Execution",
    url:        "http://www.franklincovey.com/4dflv/4D_2Vid.html",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Setting Expectations for Powerful Performance - Manage People",
    url:        "http://www.youtube.com/watch?v=2PHuhBlxTu4&feature=related",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Drive: The Surprising Truth of What Really Motivates Us",
    url:        "http://www.youtube.com/watch?v=u6XAPnuFjJc",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "How to make work-life balance work",
    url:        "http://www.ted.com/talks/lang/en/nigel_marsh_how_to_make_work_life_balance_work.html",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Building Great Places to Work",
    url:        "http://www.wobi.com/wbftv/robert-levering-building-great-place-work",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Drive: The Surprising Truth of What Really Motivates Us",
    url:        "http://www.youtube.com/watch?v=u6XAPnuFjJc",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "What makes us feel good about our work?",
    url:        "http://www.ted.com/talks/dan_ariely_what_makes_us_feel_good_about_our_work.html",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  }
)
