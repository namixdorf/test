@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

ExternalArticle.seed(:id,
  {
    id: id,
    title:      "Self Awareness and the Effective Leader",
    url:        "http://www.inc.com/resources/leadership/articles/20071001/musselwhite.html",
    body:       "Although it is probably one of the least discussed leadership competencies, self-awareness is possibly one of the most valuable. Self-awareness is being conscious of what you're good at while acknowledging what you still have yet to learn. This includes admitting when you don't have the answer and owning up to mistakes.",
    tag_list:   'Growing, Inc.com',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "10 Traits of Great Leaders (and Their Followers)",
    url:        "http://www.inc.com/kevin-daum/10-traits-of-great-leaders-and-their-followers.html?nav=featured",
    body:       'Much is written and taught about becoming a great leader. Many strive for leadership and many actually become great. As Shakespeare said in Twelfth Night: "Some are born great, some achieve greatness, and others have greatness thrust upon them."',
    tag_list:   "Growing, Inc.com",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "4 Ways to Measure Your Leadership Skills",
    url:        "http://www.inc.com/minda-zetlin/4-ways-to-measure-leadership-skills.html",
    body:       'Can leadership qualities be measured? It turns out the answer is yes. Robert Mann, author of "The Measure of a Leader," has spent the last 43 years developing leadership appraisal tools. Originally created to help the Ontario school system to train principals, his methods can help any leader identify weaknesses and strengths.',
    tag_list:   "Growing, Inc.com",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Confessions From an Introverted Leader",
    url:        "http://www.inc.com/john-brandon/are-extroverts-the-best-leaders-maybe-not.html?nav=featured",
    body:       "The best leaders are the charming, outgoing types, right? As an introvert, of course, I analyzed this to death--until I discovered it's not true.",
    tag_list:   "Growing, Inc.com",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Leadership Dictionary: How to Talk Like a Leader",
    url:        "http://www.inc.com/jana-kasperkevic/leadership-dictionary-how-to-talk-like-a-leader.html?nav=river",
    body:       "One of the most challenging aspects of leadership is communicating with important people in a wide variety of roles. Every day, you have to motivate your employees, capture the attention of potential customers, and inspire confidence of your investors.",
    tag_list:   "Growing, Inc.com, Communicate",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Leadership Secrets from Successful CEOs",
    url:        "http://www.inc.com/laura-garnett/leadership-secrets-from-successful-ceos.html?nav=next",
    body:       "There's no one right way to be a good leader. One style of leadership might work well in one company, but not in another. Ultimately, leadership styles are a personal reflection of each individual leader. They are, in a sense, a reflection of each person's inner genius. With that in mind, I recently spoke with some successful CEOs--each of whom belongs to the Young Presidents' Organization--to describe their most successful leadership strategies.",
    tag_list:   "Growing, Inc.com, Great Manager",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "8 Ways to Improve Your Communication Right Now",
    url:        "http://www.inc.com/kevin-daum/8-ways-to-improve-your-communication-right-now.html",
    body:       "No one is a perfect communicator. Throughout our lives, we all develop little habits and patterns. Some of these habits are helpful, while some create challenges when working with others. We don't usually intend to cloud our objectives or make others feel like they weren't heard. In most cases, it's just these little habits that get in the way of solid teamwork and accountability.",
    tag_list:   "Growing, Inc.com, Communicate",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "8 Core Beliefs of Extraordinary Bosses",
    url:        "http://www.inc.com/geoffrey-james/8-core-beliefs-of-extraordinary-bosses.html",
    body:       'A few years back, I interviewed some of the most successful CEOs in the world in order to discover their management secrets. I learned that the "best of the best" tend to share the following eight core beliefs.',
    tag_list:   "Growing, Inc.com, Great Manager",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Top 5 Business Books of 2012",
    url:        "http://www.inc.com/geoffrey-james/top-5-business-books-of-2012.html",
    body:       'Through most of the past decade, the most popular business books were "How I Did It" autobiographies of successful big-company CEOs, like Jack Welch\'s Winning. But that\'s no longer true.',
    tag_list:   "Growing, Inc.com",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "How to Always Be Getting Smarter",
    url:        "http://www.inc.com/magazine/201311/kunal-sarkar/how-to-always-get-smarter.html",
    body:       "As we do new things, we always want to make sure we're doing things that help the business and not hurt. We may have a feeling of intuition that something may be successful, but how do you really know?",
    tag_list:   "Growing, Inc.com, Training",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "10 Qualities Every Leader of The Future Needs to Have",
    url:        "http://www.entrepreneur.com/article/229646#",
    body:       'The reigning theory in business has long been that "alpha" leaders make the best entrepreneurs. These are aggressive, results-driven achievers who assert control and insist on a hierarchical organizational model. Yet I am seeing increasing success from "beta" startup cultures where the emphasis is on collaboration, curation and communication.',
    tag_list:   "Growing, Entrepreneur.com",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "The Best Leadership Advice I Ever Got",
    url:        "http://blogs.hbr.org/goldsmith/2008/09/the_best_leadership_advice_i_e.html",
    body:       "Like many young Ph.D. students, I was deeply impressed with my own intelligence, wisdom and profound insights into the human condition. I consistently amazed myself with my ability to judge others and see what they were doing wrong.",
    tag_list:   "Coaching, Harvard Business Review",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "How to Inspire Your Team to Bring Their A-Game",
    url:        "http://www.inc.com/vanessa-merit-nornberg/how-to-inspire-your-team-to-bring-their-a-game.html",
    body:       "Like many young Ph.D. students, I was deeply impressed with my own intelligence, wisdom and profound insights into the human condition. I consistently amazed myself with my ability to judge others and see what they were doing wrong.",
    tag_list:   "Coaching, Inc.com",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "How to Get Employees to Open Up",
    url:        "http://www.inc.com/magazine/201311/michael-fertik/how-to-get-employees-to-open-up.html",
    body:       "You can walk around all day as the CEO thinking you're not an intimidating person, but a lot of people, especially those who haven't known you a long time, are automatically intimidated by your title or by the fact that you don't talk with them every single day or whatever it is. When you have a strong personality, as I do, you have to make sure you are not intimidating people even more. You can say until you're blue in the face that you have an open-door policy, but nobody ever takes you up on it.",
    tag_list:   "Coaching, Inc.com, Communicate",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "Is Your Door Really Always Open?",
    url:        "http://www.inc.com/magazine/201311/jason-fried/what-open-door-policies-actually-mean.html",
    body:       "Nearly every boss has said it. And just about every employee has heard it. Yet it's one of the most meaningless lines ever spoken in the office:",
    tag_list:   "Coaching, Inc.com, Communicate",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "4 Surprisingly Effective Things to Say",
    url:        "http://www.inc.com/marla-tabaka/4-surprisingly-effective-things-to-say.html",
    body:       "We all make mistakes, say the wrong things, and misjudge a situation from time to time. But not everyone will admit their errors, especially in a competitive environment.",
    tag_list:   "Coaching, Inc.com",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "10 Ways to Motivate Anyone",
    url:        "http://www.inc.com/geil-browning/ten-ways-to-motivate-anyone.html",
    body:       "I am often asked about how I keep employees inspired and productive. It's an essential question since companies today must accomplish more, with fewer people. The most successful start-ups must be lean, nimble, and fierce.",
    tag_list:   "Coaching, Inc.com",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "5 Ways to Make Recognition Really Mean Something",
    url:        "http://www.inc.com/kevin-daum/5-ways-to-make-recognition-really-mean-something.html",
    body:       "Watching this year's Nobel Prizes get announced, it's clear how much esteem is tied to these awards: winners gain instant fame and respect. Recognition is a critical component of success in the work environment, but sometimes it seems overly abundant and undeserved. There is much discussion that millennials have grown up receiving too much recognition for non-accomplishments--to the point where the adjustments being made in the workplace cause standards to blur, the mediocre to be wrongly rewarded and those who truly accomplish to feel under-appreciated.",
    tag_list:   "Coaching, Inc.com, Gratitude",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "The Only Management Strategy You'll Ever Need",
    url:        "http://www.inc.com/jeff-haden/key-to-leadership-managing-employees.html",
    body:       "I was struggling to engage the audience. Okay, be honest, I tried not to let it show but I was dying onstage.",
    tag_list:   "Coaching, Inc.com",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "3 Things a Great Leader Would Never Say",
    url:        "http://www.inc.com/les-mckeown/dumbest-things-you-can-say.html",
    body:       "Great leadership is hard. Very occasionally, it's pretty simple-- like just not saying dumb things.",
    tag_list:   "Coaching, Inc.com",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "Coaching Gen Y Employees",
    url:        "http://www.ere.net/2011/12/14/coaching-gen-y-employees-what-to-do-when-they-think-they%E2%80%99re-ready-to-advance-%E2%80%A6-and-you-don%E2%80%99t/",
    body:       "Do you have Gen Y, or Millennial, employees who, in your opinion, think they are more proficient than they are or think they should advance faster than you believe is realistic?",
    tag_list:   "Coaching, ere.net",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "Why It's Essential to Keep Employees in the Loop",
    url:        "http://www.inc.com/lee-colan/keep-employees-in-the-loop.html",
    body:       "In today's information-overloaded workplace, it can be challenging for leaders to decide what to communicate to employees and what to withhold. It's easy to say to yourself, \"They don't really need to know all that\" or \"My team won't really understand\" or \"I don't think they can handle that news right now.\" But the truth is that, by withholding information to make things easier on your employees, you may inadvertently lose their trust and send their minds spiraling into panic and worst-case thinking.",
    tag_list:   "Setting, Inc.com, Communicate",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "How to Set Goals for Employees",
    url:        "http://guides.wsj.com/management/strategy/how-to-set-goals/",
    body:       "What should we do? That is the first question the manager must answer. What is the mission of the organization I am managing? What is the strategy for accomplishing that mission? What are my goals for the future, consistent with strategy and mission? What are the overall goals for my team, and for each member of the team?",
    tag_list:   "Setting, WSJ.com",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "How Understanding the 'Why' Of Decisions Matters",
    url:        "http://online.wsj.com/news/articles/SB117426249593240964",
    body:       "In 2004, a group of workers at Foremost Farms USA got a new directive: make each block of American-style cheese weigh as close as possible to 640 pounds, avoiding the usual 30- to 40-pound variation in size.",
    tag_list:   "Setting, WSJ.com",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "5 Building Blocks of Great Company Culture",
    url:        "http://www.inc.com/shelley-prevost/building-culture-the-next-big-opportunity-for-startups.html",
    body:       "The fall of 2010 was a transitional year for me. In August of that year, I finished six labor-intensive years of doctoral work in Counseling Psychology. In November, a mere three months later, I relinquished my license and left my traditional psychotherapy practice to join the world of entrepreneurs as an emotion coach and psychological mentor.",
    tag_list:   "Creating, Inc.com",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "How to Bring New Employees Into Your Culture",
    url:        "http://www.inc.com/magazine/201311/will-dean/how-to-bring-new-employees-into-your-culture.html",
    body:       "People could die if we get things wrong. A lot of our employees are young, and they operate with little direct supervision, putting on events in fields thousands of miles from where I sit. We're a very specific kind of company, and we need very specific kinds of people.",
    tag_list:   "Creating, Inc.com",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "6 Unexpected Ways to Make Someone's Day",
    url:        "http://www.inc.com/jeff-haden/6-unexpected-ways-to-make-someones-day.html",
    body:       "If you really want to brighten someone's day, do the unexpected. The effect could last a lifetime.",
    tag_list:   "Creating, Inc.com, Gratitude",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "5 Ways to Build an Extraordinary Team Culture",
    url:        "http://www.inc.com/peter-economy/5-ways-to-build-an-extraordinary-team-culture.html",
    body:       "Employee teams are one of the best ways to get things done in any business. When you take a group of independently talented people and create a team in which they can merge their talents, not only will a remarkable amount of energy and creativity be released, but their performance, loyalty and engagement will be greatly improved.",
    tag_list:   "Creating, Inc.com",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Walking Meetings: So Much More Productive Than You Think",
    url:        "http://www.inc.com/amy-buckner/walk-and-talks-more-productive-than-your-think.html",
    body:       "For the past 3 years, I’ve been conducting walk-n-talks with every employee in AnswerLab. As my CEO role brought me further and further away from the day-to-day with team, I realized we needed more ways to keep the lines of communication open.",
    tag_list:   "Creating, Inc.com",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "5 Ways Leaders Rock Employee Recognition",
    url:        "http://www.forbes.com/sites/meghanbiro/2013/01/13/5-ways-leaders-rock-employee-recognition/",
    body:       "I was grocery shopping the other day (Yes, this sometimes happens). A mom with two small kids in tow kept up a constant stream of chatter: “Great job pushing the cart, Stella, you are so smart.” “Good work picking out a pepper, Max, now put it back.” It went on and on – kids do something/anything, mother responds with a positive affirmation, kids do another something, mother reacts. This is so awesome to see in action. I’m in aisle 10 and it continues. There is a giant metaphor unfolding as I seek out my coconut water.",
    tag_list:   "Creating, Forbes.com, Gratitude",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Seven Ways To Inspire Employees To Love Their Jobs",
    url:        "http://www.forbes.com/sites/carminegallo/2013/06/21/seven-ways-to-inspire-employees-to-love-their-jobs/",
    body:       "Smart leaders take advantage of the fact that some things never change. Take employee engagement, for example. In my book, Fire Them Up, which I wrote in 2007, I cited several studies that showed the majority of workers as being \"disengaged\" and hating their jobs. Unfortunately the numbers haven’t changed.",
    tag_list:   "Creating, Forbes.com",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "You Made It Happen Recognition Tool",
    url:        "https://recognition.octanner.com/nomination/alliancedata/default.jsp",
    body:       "Every day, associates like you make a difference in the businesses of our clients or in the lives of your fellow associates. The YOU made it happen!",
    tag_list:   "Creating, Forbes.com",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Create a Culture of Responsibility",
    url:        "http://www.inc.com/peter-economy/create-culture-of-responsibility.html",
    body:       "If you're looking to get the most out of your employees--and to help them get the most out of their jobs--it's not enough to just empower or engage them. You've got to make sure that your people accept responsibility for the work they do--both the good and the bad. When things go well, then they get the credit. But when things don't go well, then they must learn to accept responsibility for these outcomes too.",
    tag_list:   "Fueling, Inc.com",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Best Career Advancement: Bottoms Up",
    url:        "http://www.inc.com/magazine/19930701/3639.html",
    body:       "Boosting careers is not about corporate ladders or organizational charts; it's about paying attention to how people can grow in the jobs they already have.",
    tag_list:   "Fueling, Inc.com",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "10 Things Really Amazing Employees Do",
    url:        "http://www.inc.com/kevin-daum/10-things-really-amazing-employees-do.html",
    body:       "As a longtime employer of dozens, I was always grateful to have good employees. It takes a lot to recruit and maintain top talent. Every once in a while special employees come along that just really seem to get it. They drive the entire company forward in ways that were unimaginable. Advancement and reward is never an issue for these rock stars because they understand the power of cause and effect, and only a worthy company can retain them and afford them.",
    tag_list:   "Fueling, Inc.com",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "3 Things Your Employees Want More Than Money",
    url:        "http://www.inc.com/will-yakowicz/motivate-employees-with-opportunity-for-positive-impact.html",
    body:       "For founders, the long hours and the instability of building a start-up are endurable because of the potential pay-off in the distance: a lucrative IPO that makes those early days worthwhile.",
    tag_list:   "Fueling, Inc.com",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "6 Tips for Delegating Success",
    url:        "http://www.forbes.com/sites/dailymuse/2011/12/23/6-tips-for-delegating-success/",
    body:       "When I began my career, I was a complete and total control freak. I just knew that if I handled everything myself, it would get done faster, better, and more efficiently. Delegating to others would mean wasting time, losing control of my projects, and worst of all, showing weakness in my ability to get the job done.",
    tag_list:   "Finding, Forbes.com, Delegate",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:     "Tips for Managing Remotely",
    url:       "http://blogs.hbr.org/hmu/2008/02/encouraging-managers-to-delega.html",
    body:      "Managers’ common reluctance to delegate responsibility is a topic that has long intrigued Jeffrey Pfeffer, coauthor, with Charles O’Reilly, of Hidden Value: How Great Companies Achieve Extraordinary Results with Ordinary People (Harvard Business School Press, 2000).",
    tag_list:  "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "The Secret to Effective Delegation",
    url:        "http://www.inc.com/jessica-stillman/the-secret-to-effective-delegation.html",
    body:       "Getting others to effectively take on some of the tasks of running your business is all that stands between entrepreneurs and a stress-induced meltdown. Yet many business owners struggle to keep their ballooning to-do lists and schedules from eating up their quality of life.",
    tag_list:   "Finding, Inc.com, Delegate",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Debunking The Delegation Myths",
    url:        "http://www.inc.com/marla-tabaka/debunking-the-delegation-myths.html",
    body:       "Too often I get calls from business owners sending out an S.O.S. because they're too busy to enjoy life and good health. In the quest for freedom owning your own business sounds like an excellent solution, but only if you plan for the future and see the long term vision.",
    tag_list:   "Finding, Inc.com, Delegate",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "A Dummies Guide to Delegating Effectively",
    url:        "http://www.dummies.com/how-to/content/delegating-effectively.html",
    body:       "Delegation doesn't just happen. Just like any other task that you perform as a manager, you have to work at it. The six steps to effective delegation are the following...",
    tag_list:   "Finding, Delegate",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Get Back More Free Time: 3 Tips",
    url:        "http://www.inc.com/kevin-daum/delegate-with-confidence-3-tips.html",
    body:       "There are things you love to do and things you have to do. Eventually everyone finds there is precious little time to do all of both. The only way out of this conundrum is to delegate the Have To tasks to someone else. This is harder than it sounds for most people.",
    tag_list:   "Finding, Inc.com",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Guide to Effective Delegating (For Control Freaks)",
    url:        "http://www.inc.com/matthew-swyers/guide-to-effective-delegating-for-control-freaks.html",
    body:       "I started my first business in a 100-square-foot office my brother-in-law and I finished in the basement of my home. Over the years the business grew from just me to a few more people and then a lot more people. We moved into our first rented space. Later, we moved into a larger leased space. Finally, we built our own office complex as the company grew beyond where I had ever envisioned it would go.",
    tag_list:   "Finding, Inc.com, Delegate",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Case Study: The Wrong Way to Delegate",
    url:        "http://www.inc.com/resources/leadership/articles/20060301/dao.html",
    body:       "Like most people who work in the field of leadership and organizational performance, I believe in empowering employees. In fact, empowerment, trust, and faith that your employees will rise to the occasion when given the opportunity, have become some of the core tenets of leadership thinking.",
    tag_list:   "Finding, Inc.com",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "8 Things Really Efficient People Do",
    url:        "http://www.inc.com/kevin-daum/8-things-really-efficient-people-do.html",
    body:       "Most everyone would like to be more efficient. Just think, you would spend less time doing the things that you don't enjoy and more on the things that bring satisfaction, happiness and profit. Some people are actually very adept at efficiency.  They manage every manageable moment so they have more time for themselves to do the things they love. Here are eight techniques efficient people use to gain that freedom.",
    tag_list:   "Finding, Inc.com",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Encouraging Managers to Delegate",
    url:        "http://blogs.hbr.org/2008/02/encouraging-managers-to-delega/",
    body:       "Managers’ common reluctance to delegate responsibility is a topic that has long intrigued Jeffrey Pfeffer, coauthor, with Charles O’Reilly, of Hidden Value: How Great Companies Achieve Extraordinary Results with Ordinary People (Harvard Business School Press, 2000).",
    tag_list:   "Finding, Inc.com",
    category_id: cat_id("Balance")
  },
)
