@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

Book.seed(:id,
  {
    id: id,
    title:      "Now Discover Your Strengths",
    url:        "http://www.amazon.com/Discover-Your-Strengths-Marcus-Buckingham/dp/0743201140",
    author:     "Marcus Buckingham",
    tag_list:   'Growing, Great Manager',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Emotional Intelligence at Work",
    url:        "http://www.amazon.com/Emotional-Intelligence-Work-Untapped-Success/dp/0787951986/",
    author:     "Hendrie Weisinger Ph.D.",
    tag_list:   'Growing',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "First Break All the Rules",
    url:        "http://www.amazon.com/First-Break-All-Rules-Differently/dp/0684852861/",
    author:     "Marcus Buckingham",
    tag_list:   'Growing',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "The First 90 Days",
    url:        "http://www.amazon.com/First-Days-Updated-Expanded-Strategies/dp/1422188612/",
    author:     "Michael Watkins",
    tag_list:   'Growing, Great Manager',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Coaching, Mentoring and Managing: Breakthrough Strategies to Solve Performance Problems and Build Winning Teams",
    url:        "http://www.amazon.com/Coaching-Mentoring-Managing-Breakthrough-Performance/dp/1564142434/",
    author:     "William Hendricks",
    tag_list:   'Coaching',
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "Growing Great Employees: Turning Ordinary people into Extraordinary performers",
    url:        "http://www.amazon.com/Growing-Great-Employees-Extraordinary-Performers/dp/1591841909/",
    author:     "Erika Andersen",
    tag_list:   'Coaching',
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "The Four Disciplines of Execution",
    url:        "http://www.amazon.com/The-Disciplines-Execution-Achieving-Important/dp/145162705X/",
    author:     "Sean Covey",
    tag_list:   'Setting',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Crucial Accountability",
    url:        "http://www.amazon.com/Crucial-Accountability-Resolving-Expectations-Commitments/dp/0071829318/",
    author:     "Kerry Patterson, Joseph Grenny, Ron McMillan and Al Switzler",
    tag_list:   'Setting',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Goal: A Process for Ongoing Improvement",
    url:        "http://www.amazon.com/The-Goal-Process-Ongoing-Improvement/dp/0884271951/",
    author:     "Eliyhu M. Goldratt",
    tag_list:   'Setting',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "The Enemy of Engagement: Put an End to Workplace Frustration – and Get the Most from Your Employees",
    url:        "http://www.amazon.com/Enemy-Engagement-Workplace-Frustration---Employees/dp/0814417957/",
    author:     "Mark Royal and Tom Agnew",
    tag_list:   'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "1501 Ways to Reward Employees",
    url:        "http://www.amazon.com/1501-Reward-Employees-Nelson-Ph-D/dp/0761168788/",
    author:     "Bob Nelson",
    tag_list:   'Creating, Gratitude',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "A Carrot a Day",
    url:        "http://www.amazon.com/Carrot-Day-Daily-Recognition-Employees/dp/1586855069/",
    author:     "Adrian Gostick and Chester Elton",
    tag_list:   'Creating, Gratitude',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Love 'Em or Lose 'Em: Getting Good People to Stay",
    url:        "http://www.amazon.com/Love-Lose-Getting-Good-People/dp/1576755576/",
    author:     "Beverly Kaye and Sharon Jordan-Evans",
    tag_list:   'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Encouraging the Heart: A Leader’s Guide to Rewarding and Recognizing Others",
    url:        "http://www.amazon.com/Encouraging-Heart-Leaders-Rewarding-Recognizing/dp/0787964638/",
    author:     "J. Kouzes and B. Posner",
    tag_list:   'Creating, Gratitude',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Leadership From the Inside Out: Becoming a Leader for Life",
    url:        "http://www.amazon.com/Leadership-Inside-Out-Becoming-Leader/dp/1576755991/",
    author:     "K. Cashman",
    tag_list:   'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "The Corporate Lattice: Achieving High Performance In the Changing World of Work",
    url:        "http://www.amazon.com/Corporate-Lattice-Achieving-Performance-Changing/dp/1422155161/",
    author:     "Cathleen Benko and Molly Anderson",
    tag_list:   'Fueling',
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "FYI: For Your Improvement, A Guide for Development and Coaching",
    url:        "http://www.amazon.com/FYI-Improvement-Guide-Development-Coaching/dp/0974589233",
    author:     "Michael Lombardo and Robert Eichenger",
    tag_list:   'Fueling',
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Getting Things Done: The Art of Stress-Free ProductivityGetting Things Done: The Art of Stress-Free Productivity",
    url:        "http://www.amazon.com/Getting-Things-Done-Stress-Free-Productivity/dp/0142000280/",
    author:     "David Allen",
    tag_list:   'Fueling',
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Managing Management Time: Who's Got the Monkey?",
    url:        "http://www.amazon.com/Managing-Management-Time-Whos-Monkey/dp/0135510864/",
    author:     "W. Onchen and D. Wass Harvard Business Review",
    tag_list:   'Fueling',
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "If You Want It Done Right, You Don’t Have to Do It Yourself! The Power of Effective Delegation",
    url:        "http://www.amazon.com/Want-Done-Right-Dont-Yourself/dp/1884956327/",
    author:     "Genett, D. M.",
    tag_list:   'Fueling',
    category_id: cat_id("Fueling")
  },
)
