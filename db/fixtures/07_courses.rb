@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

ClassroomCourse.seed(:id,
  {
    id: id,
    title: "Managing @ Epsilon",
    tag_list: 'Growing',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title: "Great Leaders",
    tag_list: 'Growing, Great Manager',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title: "7 Habits for Managers",
    tag_list: 'Growing, Great Manager',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title: "7 Habits for Highly Effective People",
    tag_list: 'Balance',
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title: "Effective Edge",
    tag_list: 'Balance',
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title: "Time Management Class",
    tag_list: 'Balance',
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title: "Delegating (Second Edition)",
    tag_list: 'Balance, Delegate',
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title: "Managing @ Epsilon",
    tag_list: 'Coaching',
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title: "Managing@Epsilon",
    tag_list: 'Setting',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title: "Crucial Confrontations",
    tag_list: 'Setting, Mistakes',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title: "Difficult Conversations",
    tag_list: 'Setting, Mistakes',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title: "Great Leaders",
    tag_list: 'Setting',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title: "Managing@Epsilon",
    tag_list: 'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title: "Great Leaders",
    tag_list: 'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title: "Managing @ Epsilon",
    tag_list: 'Fueling',
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title: "Coaching for Results",
    tag_list: 'Fueling',
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title: "Coaching in the Workplace",
    tag_list: 'Fueling',
    category_id: cat_id("Fueling")
  },
)
