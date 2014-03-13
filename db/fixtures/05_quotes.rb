@index = 0
def id
  @index += 1
end

Quote.seed(:id,
  { 
    id: id, 
    text: "A great manager is like a waiter in a restaurant. While the meal is going on, the waiter’s job is to facilitate and make sure everyone has what they need, but never be noticed.", 
    author: "George Gier, Executive Vice President, Creative Director",
    tag_list: "Coaching, Chicago, Gier, Great Manager",
    css_class: "coaching"
  },
  { 
    id: id, 
    text: "We treat everyone here valuably and as part of the team. I think that keeps people here and works well over a long period of time.", 
    author: "George Gier, Executive Vice President, Creative Director",
    tag_list: "Coaching, Chicago, Gier, Gratitude",
    css_class: "coaching"
  },
  {
    id: id,
    text: "I’d rather get up out of the chair and go talk to somebody, because that shows that you care. That means a lot more than a lengthy email.",
    author: "Mark Wollney, Sr. Vice President, Digital",
    tag_list: "Coaching, Chicago, Wollney, Communicate",
    css_class: "coaching"
  },
  {
    id: id,
    text: "Gathering all of the information before you make a decision and react I think is the most important thing.",
    author: "Diane Gehrke, IT Director, Business Solutions",
    tag_list: "Growing, Chicago, Gehrke, Mistakes",
    css_class: "growing"
  },
  {
    id: id,
    text: "A lot of times I’m in a situation where I think I need to correct someone else turns into a growing experience for myself.",
    author: "Diane Gehrke, IT Director, Business Solutions",
    tag_list: "Growing, Chicago, Gehrke, Mistakes",
    css_class: "growing"
  },
  {
    id: id,
    text: "Even bad managers I’ve had in my career have helped me improve in identifying ways not to handle situations.",
    author: "Steven Klink, Senior Creative Director",
    tag_list: "Growing, Chicago, Klink",
    css_class: "growing"
  },
  {
    id: id,
    text: "I don’t think you can be everything to everybody. So, you have to focus where your strengths are and leverage those strengths as much as possible.",
    author: "Jeannie Green, Vice President, Data Solutions",
    tag_list: "Growing, Denver, Green, Great Manager",
    css_class: "growing"
  },
  {
    id: id,
    text: "Make sure people are communicating back to you on how you’re doing. You need the good, the bad and the ugly, you need all of that information.",
    author: "Jeannie Green, Vice President, Data Solutions",
    tag_list: "Growing, Denver, Green, Communicate",
    css_class: "growing"
  },
  {
    id: id,
    text: "Learn the hard way a few times, learn the right way most of the time and learn every day.",
    author: "Mary Staples, Vice President, Retail and Data Solutions",
    tag_list: "Growing, Denver, Staples, Training",
    css_class: "growing"
  },
  {
    id: id,
    text: "If you don’t delegate, no one can grow.",
    author: "George Gier, Executive Vice President, Creative Director",
    tag_list: "Finding, Chicago, Gier, Delegate",
    css_class: "balance"
  },
  {
    id: id,
    text: "Hire great people, let them do their work, give them what they need so they can say ‘That’s my work, I did that’, even though the manager may have had something to do with the success.",
    author: "George Gier, Executive Vice President, Creative Director",
    tag_list: "Finding, Chicago, Gier, Great Manager",
    css_class: "balance"
  },
  {
    id: id,
    text: "I would never ask my associates to do something I wouldn’t do myself, or haven’t done over time.",
    author: "Mark Wollney, Sr. Vice President, Digital",
    tag_list: "Coaching, Chicago, Wollney",
    css_class: "coaching"
  },
  {
    id: id,
    text: "I would love for an employee take my job or have the passion to try to take it. Because, that will push me and make me better.",
    author: "Mark Wollney, Sr. Vice President, Digital",
    tag_list: "Finding, Chicago, Wollney, Delegate",
    css_class: "balance"
  },
  {
    id: id,
    text: "There are some smart people that you hired. Let them do what they do.  They’re going to be successful, and if they’re successful, you’re going to be successful and result in a bigger opportunity for Epsilon.",
    author: "Mark Wollney, Sr. Vice President, Digital",
    tag_list: "Finding, Chicago, Wollney, Great Manager",
    css_class: "balance"
  },
  {
    id: id,
    text: "Be honest with your time management and what you can handle. If you try to do everything, you’re going to get burned out.",
    author: "Marilyn Valace, Director of Sales",
    tag_list: "Finding, Denver, Valace, Delegate",
    css_class: "balance"
  },
  {
    id: id,
    text: "More often than not a celebration of some win ends in food – and I think that’s good.",
    author: "George Gier, Executive Vice President, Creative Director",
    tag_list: "Finding, Chicago, Gier, Gratitude",
    css_class: "creating"
  },
  {
    id: id,
    text: "It’s important that people are recognized for the big things and the little ones.",
    author: "George Gier, Executive Vice President, Creative Director",
    tag_list: "Creating, Chicago, Gier, Gratitude",
    css_class: "creating"
  },
  {
    id: id,
    text: "We like to do little flash mobs and show up at somebody’s desk with a treat to really celebrate what they’ve done.",
    author: "Carrie Hinton",
    tag_list: "Finding, Denver, Hinton, Gratitude",
    css_class: "creating"
  },
  {
    id: id,
    text: "We’re a team. It’s all about finding out how do we involve everyone so they’re all on board with what we’re trying to achieve.",
    author: "Jeannie Green, Vice President, Data Solutions",
    tag_list: "Finding, Denver, Green",
    css_class: "creating"
  },
  {
    id: id,
    text: "Work/Life balance is really important. I think people do their best job when they have some sort of balance.",
    author: "Jeannie Green, Vice President, Data Solutions",
    tag_list: "Finding, Denver, Green",
    css_class: "creating"
  },
  {
    id: id,
    text: "One of the fundamental talents of a good manager is listening. We have two ears and one mouth for a reason.",
    author: "Mary Staples, Vice President, Retail and Data Solutions",
    tag_list: "Finding, Denver, Staples, Communicate",
    css_class: "creating"
  },
  {
    id: id,
    text: "Sometimes when people are feeling overwhelmed, it’s because they’ve lost their own inner ability to get the problem solved. You need to help them see the vision of how they can help themselves.",
    author: "Mary Staples, Vice President, Retail and Data Solutions",
    tag_list: "Finding, Denver, Staples",
    css_class: "creating"
  },
  {
    id: id,
    text: "Be yourself. Be truthful. Be open. Be approachable. Listen. That is what’s critical to be a leader and to be someone that inspires employees.",
    author: "Mary Staples, Vice President, Retail and Data Solutions",
    tag_list: "Finding, Denver, Staples, Gratitude",
    css_class: "creating"
  },
  {
    id: id,
    text: "Recognize that everybody’s going to have a mistake. It’s more important how we handle the mistake.",
    author: "Carrie Hinton",
    tag_list: "Setting, Denver, Hinton, Mistakes",
    css_class: "setting"
  },
  {
    id: id,
    text: "It’s important to celebrate effort as well as the quantitative successes.",
    author: "Rob Reger, Vice President of Sales, Data Solutions",
    tag_list: "Setting, Denver, Reger, Gratitude",
    css_class: "setting"
  },
  {
    id: id,
    text: "Part of being a manager is to lift other people up. As you rise, your goal should be to lift everyone up around you.",
    author: "Marilyn Valace, Director of Sales",
    tag_list: "Fueling, Denver, Valace, Gratitude",
    css_class: "fueling"
  },
  {
    id: id,
    text: "Remember that they’re people, not machines. They need to be treated like people.",
    author: "Rob Reger, Vice President of Sales, Data Solutions",
    tag_list: "Fueling, Denver, Reger",
    css_class: "fueling"
  },
  {
    id: id,
    text: "A leader is best when people barely know he exists, when his work is done, his aim fulfilled, they will say: we did it ourselves.",
    author: "Lao Tzu",
    tag_list: "Coaching, Growing, Great Manager"
  },
  {
    id: id,
    text: "I must follow the people. Am I not their leader?",
    author: "Benjamin Disraeli",
    tag_list: "Coaching"
  },
  {
    id: id,
    text: "You manage things; you lead people.",
    author: "Rear Admiral Grace Murray Hopper",
    tag_list: "Coaching, Finding, Great Manager"
  },
  {
    id: id,
    text: "The first responsibility of a leader is to define reality. The last is to say thank you. In between, the leader is a servant.",
    author: "Max DePree",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "Leadership is the capacity to translate vision into reality.",
    author: "Warren Bennis",
    tag_list: "Coaching, Growing, Communication"
  },
  {
    id: id,
    text: "Lead me, follow me, or get out of my way.",
    author: "General George Patton",
    tag_list: "Setting, Coaching"
  },
  {
    id: id,
    text: "Before you are a leader, success is all about growing yourself. When you become a leader, success is all about growing others.",
    author: "Jack Welch",
    tag_list: "Fueling, Coaching, Training"
  },
  {
    id: id,
    text: "A leader is a dealer in hope.",
    author: "Napoleon Bonaparte",
    tag_list: "Fueling, Coaching"
  },
  {
    id: id,
    text: "You don’t need a title to be a leader.",
    author: "Multiple Attributions",
    tag_list: "Fueling, Growing"
  },
  {
    id: id,
    text: "A leader is one who knows the way, goes the way, and shows the way.",
    author: "John Maxwell",
    tag_list: "Setting, Coaching, Communication"
  },
  {
    id: id,
    text: "My own definition of leadership is this: The capacity and the will to rally men and women to a common purpose and the character which inspires confidence.",
    author: "General Montgomery",
    tag_list: "Coaching, Growing, Communication"
  },
  {
    id: id,
    text: "Leadership is lifting a person’s vision to high sights, the raising of a person’s performance to a higher standard, the building of a personality beyond its normal limitations.",
    author: "Peter Drucker",
    tag_list: "Setting, Coaching, Great Manager"
  },
  {
    id: id,
    text: "Never doubt that a small group of thoughtful, concerned citizens can change world. Indeed it is the only thing that ever has.",
    author: "Margaret Mead",
    tag_list: "Creating"
  },
  {
    id: id,
    text: "The most dangerous leadership myth is that leaders are born-that there is a genetic factor to leadership. That’s nonsense; in fact, the opposite is true. Leaders are made rather than born.",
    author: "Warren Bennis",
    tag_list: "Finding, Fueling, Training"
  },
  {
    id: id,
    text: "To command is to serve, nothing more and nothing less.",
    author: "Andre Malraux",
    tag_list: "Coaching"
  },
  {
    id: id,
    text: "He who has never learned to obey cannot be a good commander.",
    author: "Aristotle",
    tag_list: "Growing, Coaching"
  },
  {
    id: id,
    text: "Become the kind of leader that people would follow voluntarily; even if you had no title or position.",
    author: "Brian Tracy",
    tag_list: "Coaching, Growing, Great Manager"
  },
  {
    id: id,
    text: "I start with the premise that the function of leadership is to produce more leaders, not more followers.",
    author: "Ralph Nader",
    tag_list: "Fueling, Delegate"
  },
  {
    id: id,
    text: "Effective leadership is not about making speeches or being liked; leadership is defined by results not attributes.",
    author: "Peter Drucker",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "Anyone can hold the helm when the sea is calm.",
    author: "Publilius Syrus",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "A great person attracts great people and knows how to hold them together.",
    author: "Johann Wolfgang Von Goethe",
    tag_list: "Fueling, Coaching, Great Manager"
  },
  {
    id: id,
    text: "The best executive is the one who has sense enough to pick good men to do what he wants done, and self-restraint enough to keep from meddling with them while they do it.",
    author: "Theodore Roosevelt",
    tag_list: "Finding, Coaching"
  },
  {
    id: id,
    text: "Leadership is influence.",
    author: "John C. Maxwell",
    tag_list: "Coaching, Finding"
  },
  {
    id: id,
    text: "You don’t lead by pointing and telling people some place to go. You lead by going to that place and making a case.",
    author: "Ken Kesey",
    tag_list: "Finding, Coaching"
  },
  {
    id: id,
    text: "When I give a minister an order, I leave it to him to find the means to carry it out.",
    author: "Napoleon Bonaparte",
    tag_list: "Finding, Coaching"
  },
  {
    id: id,
    text: "Men make history and not the other way around. In periods where there is no leadership, society stands still. Progress occurs when courageous, skillful leaders seize the opportunity to change things for the better.",
    author: "Harry S. Truman",
    tag_list: "Coaching"
  },
  {
    id: id,
    text: "People buy into the leader before they buy into the vision.",
    author: "John Maxwell",
    tag_list: "Coaching, Creating"
  },
  {
    id: id,
    text: "The art of leadership is saying no, not saying yes. It is very easy to say yes.",
    author: "Tony Blair",
    tag_list: "Finding, Setting"
  },
  {
    id: id,
    text: "The very essence of leadership is that you have to have a vision. It’s got to be a vision you articulate clearly and forcefully on every occasion. You can’t blow an uncertain trumpet.",
    author: "Reverend Theodore Hesburgh",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "The key to successful leadership today is influence, not authority.",
    author: "Kenneth Blanchard",
    tag_list: "Setting, Coaching"
  },
  {
    id: id,
    text: "A good general not only sees the way to victory; he also knows when victory is impossible.",
    author: "Polybius",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "A great leader’s courage to fulfill his vision comes from passion, not position.",
    author: "John Maxwell",
    tag_list: "Creating, Growing, Coaching, Great Manager"
  },
  {
    id: id,
    text: "A leader takes people where they want to go. A great leader takes people where they don’t necessarily want to go, but ought to be.",
    author: "Rosalynn Carter",
    tag_list: "Coaching, Setting, Great Manager"
  },
  {
    id: id,
    text: "The challenge of leadership is to be strong, but not rude; be kind, but not weak; be bold, but not bully; be thoughtful, but not lazy; be humble, but not timid; be proud, but not arrogant; have humor, but without folly.",
    author: "Jim Rohn",
    tag_list: "Coaching, Setting, Great Manager"
  },
  {
    id: id,
    text: "Outstanding leaders go out of their way to boost the self-esteem of their personnel. If people believe in themselves, it’s amazing what they can accomplish.",
    author: "Sam Walton",
    tag_list: "Creating, Gratitude"
  },
  {
    id: id,
    text: "A true leader has the confidence to stand alone, the courage to make tough decisions, and the compassion to listen to the needs of others. He does not set out to be a leader, but becomes one by the equality of his actions and the integrity of his intent.",
    author: "Douglas MacArthur",
    tag_list: "Setting, Coaching, Great Manager"
  },
  {
    id: id,
    text: "A ruler should be slow to punish and swift to reward.",
    author: "Ovid",
    tag_list: "Creating, Mistakes, Gratitude"
  },
  {
    id: id,
    text: "No man will make a great leader who wants to do it all himself, or to get all the credit for doing it.",
    author: "Andrew Carnegie",
    tag_list: "Finding, Delegate"
  },
  {
    id: id,
    text: "Leadership is the art of getting someone else to do something you want done because he wants to do it.",
    author: "General Dwight Eisenhower",
    tag_list: "Finding, Coaching, Setting, Delegate"
  },
  {
    id: id,
    text: "The leader has to be practical and a realist yet must talk the language of the visionary and the idealist.",
    author: "Eric Hoffer",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "Never tell people how to do things. Tell them what to do and they will surprise you with their ingenuity.",
    author: "General George Patton",
    tag_list: "Finding, Coaching, Communication"
  },
  {
    id: id,
    text: "As we look ahead into the next century, leaders will be those who empower others.",
    author: "Bill Gates",
    tag_list: "Fueling, Coaching, Delegate"
  },
  {
    id: id,
    text: "All of the great leaders have had one characteristic in common: it was the willingness to confront unequivocally the major anxiety of their people in their time. This, and not much else, is the essence of leadership.",
    author: "John Kenneth Galbraith",
    tag_list: "Creating, Coaching, Great Manager"
  },
  {
    id: id,
    text: "Do what you feel in your heart to be right–for you’ll be criticized anyway.",
    author: "Eleanor Roosevelt",
    tag_list: "Creating"
  },
  {
    id: id,
    text: "Don’t necessarily avoid sharp edges. Occasionally they are necessary to leadership.",
    author: "Donald Rumsfeld",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "Education is the mother of leadership.",
    author: "Wendell Willkie",
    tag_list: "Fueling, Growing"
  },
  {
    id: id,
    text: "Effective leadership is putting first things first. Effective management is discipline, carrying it out.",
    author: "Stephen Covey",
    tag_list: "Growing, Setting"
  },
  {
    id: id,
    text: "Great leaders are almost always great simplifiers, who can cut through argument, debate, and doubt to offer a solution everybody can understand.",
    author: "General Colin Powell",
    tag_list: "Coaching, Setting, Communication"
  },
  {
    id: id,
    text: "Great leaders are not defined by the absence of weakness, but rather by the presence of clear strengths.",
    author: "John Zenger",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "He who has great power should use it lightly.",
    author: "Seneca",
    tag_list: "Coaching"
  },
  {
    id: id,
    text: "He who has learned how to obey will know how to command.",
    author: "Solon",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "I am reminded how hollow the label of leadership sometimes is and how heroic followership can be.",
    author: "Warren Bennis",
    tag_list: "Creating, Coaching"
  },
  {
    id: id,
    text: "I cannot give you the formula for success, but I can give you the formula for failure, which is: Try to please everybody.",
    author: "Herbert Swope",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "If one is lucky, a solitary fantasy can totally transform one million realities.",
    author: "Maya Angelou",
    tag_list: "Fueling"
  },
  {
    id: id,
    text: "If your actions inspire others to dream more, learn more, do more and become more, you are a leader.",
    author: "John Quincy Adams",
    tag_list: "Fueling, Coaching, Great Manager"
  },
  {
    id: id,
    text: "In matters of style, swim with the current; in matters of principle, stand like a rock.",
    author: "Thomas Jefferson",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "It is absurd that a man should rule others, who cannot rule himself.",
    author: "Latin Proverb",
    tag_list: "Growing, Finding"
  },
  {
    id: id,
    text: "It is better to lead from behind and to put others in front, especially when you celebrate victory when nice things occur. You take the front line when there is danger. Then people will appreciate your leadership.",
    author: "Nelson Mandela",
    tag_list: "Fueling, Coaching, Gratitude"
  },
  {
    id: id,
    text: "Lead and inspire people. Don’t try to manage and manipulate people. Inventories can be managed but people must be lead.",
    author: "Ross Perot",
    tag_list: "Coaching, Creating"
  },
  {
    id: id,
    text: "Leaders aren’t born, they are made. And they are made just like anything else, through hard work. And that’s the price we’ll have to pay to achieve that goal, or any goal.",
    author: "Vince Lombardi",
    tag_list: "Growing, Training"
  },
  {
    id: id,
    text: "Leaders must be close enough to relate to others, but far enough ahead to motivate them.",
    author: "John C. Maxwell",
    tag_list: "Setting, Coaching"
  },
  {
    id: id,
    text: "Leadership and learning are indispensable to each other.",
    author: "John F. Kennedy",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "Leadership does not always wear the harness of compromise.",
    author: "Woodrow Wilson",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "Leadership is a potent combination of strategy and character. But if you must be without one, be without the strategy.",
    author: "Norman Schwarzkopf",
    tag_list: "Creating, Coaching, Growing"
  },
  {
    id: id,
    text: "Leadership is solving problems. The day soldiers stop bringing you their problems is the day you have stopped leading them. They have either lost confidence that you can help or concluded you do not care. Either case is a failure of leadership.",
    author: "Colin Powell",
    tag_list: "Coaching, Communication"
  },
  {
    id: id,
    text: "Leadership is the key to 99 percent of all successful efforts.",
    author: "Erskine Bowles",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "Leadership is unlocking people’s potential to become better.",
    author: "Bill Bradley",
    tag_list: "Fueling"
  },
  {
    id: id,
    text: "Management is about arranging and telling. Leadership is about nurturing and enhancing.",
    author: "Tom Peters",
    tag_list: "Coaching, Creating, Fueling"
  },
  {
    id: id,
    text: "Management is efficiency in climbing the ladder of success; leadership determines whether the ladder is leaning against the right wall.",
    author: "Stephen Covey",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "Never give an order that can’t be obeyed.",
    author: "General Douglas MacArthur",
    tag_list: "Setting"
  },
  {
    id: id,
    text: "No man is good enough to govern another man without that other’s consent.",
    author: "Abraham Lincoln",
    tag_list: "Setting, Finding"
  },
  {
    id: id,
    text: "What you do has far greater impact than what you say.",
    author: "Stephen Covey",
    tag_list: "Growing, Coaching, Great Manager"
  },
  {
    id: id,
    text: "Not the cry, but the flight of a wild duck, leads the flock to fly and follow.",
    author: "Chinese Proverb",
    tag_list: "Coaching, Growing"
  },
  {
    id: id,
    text: "One of the tests of leadership is the ability to recognize a problem before it becomes an emergency.",
    author: "Arnold Glasow",
    tag_list: "Growing, Mistakes"
  },
  {
    id: id,
    text: "The final test of a leader is that he leaves behind him in other men, the conviction and the will to carry on.",
    author: "Walter Lippman",
    tag_list: "Fueling"
  },
  {
    id: id,
    text: "The greatest leaders mobilize others by coalescing people around a shared vision.",
    author: "Ken Blanchard",
    tag_list: "Fueling, Coaching"
  },
  {
    id: id,
    text: "The growth and development of people is the highest calling of leadership.",
    author: "Harvey Firestone",
    tag_list: "Fueling"
  },
  {
    id: id,
    text: "To do great things is difficult; but to command great things is more difficult.",
    author: "Friedrich Nietzsche",
    tag_list: "Finding"
  },
  {
    id: id,
    text: "To have long term success as a coach or in any position of leadership, you have to be obsessed in some way.",
    author: "Pat Riley",
    tag_list: "Coaching"
  },
  {
    id: id,
    text: "True leadership lies in guiding others to success. In ensuring that everyone is performing at their best, doing the work they are pledged to do and doing it well.",
    author: "Bill Owens",
    tag_list: "Coaching, Setting"
  },
  {
    id: id,
    text: "We live in a society obsessed with public opinion. But leadership has never been about popularity.",
    author: "Marco Rubio",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "Whatever you are, be a good one.",
    author: "Abraham Lincoln",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "You gain strength, courage and confidence by every experience in which you really stop to look fear in the face. You must do the thing you think you cannot do.",
    author: "Eleanor Roosevelt",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "A competent leader can get efficient service from poor troops, while on the contrary an incapable leader can demoralize the best of troops.",
    author: "John J Pershing",
    tag_list: "Coaching"
  },
  {
    id: id,
    text: "A good leader is a person who takes a little more than his share of the blame and a little less than his share of the credit.",
    author: "John Maxwell",
    tag_list: "Coaching, Setting, Gratitude"
  },
  {
    id: id,
    text: "There are three essentials to leadership: humility, clarity and courage.",
    author: "Fuchan Yuan",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "I am endlessly fascinated that playing football is considered a training ground for leadership, but raising children isn’t.",
    author: "Dee Dee Myers",
    tag_list: "Creating"
  },
  {
    id: id,
    text: "My responsibility is getting all my players playing for the name on the front of the jersey, not the one on the back.",
    author: "Unknown",
    tag_list: "Creating, Coaching"
  },
  {
    id: id,
    text: "The supreme quality of leadership is integrity.",
    author: "Dwight Eisenhower",
    tag_list: "Growing"
  },
  {
    id: id,
    text: "You don’t lead by hitting people over the head—that’s assault, not leadership.",
    author: "Dwight Eisenhower",
    tag_list: "Coaching, Setting, Gratitude"
  },
  {
    id: id,
    text: "Earn your leadership every day.",
    author: "Michael Jordan",
    tag_list: "Growing"
  },
)