@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

OnlineCourse.seed(:id,
  {
    id: id,
    title: "Coaching for Results",
    tag_list: 'Coaching',
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title: "Coaching in the Workplace",
    tag_list: 'Coaching',
    category_id: cat_id("Coaching")
  },

  {
    id: id,
    title: "Work/Life Balance",
    tag_list: 'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title: "Recognition",
    tag_list: 'Creating',
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title: "Effective Management:  Empowering Your Workgroup",
    tag_list: 'Creating, Delegate',
    category_id: cat_id("Creating")
  },

  {
    id: id,
    title: "Setting Expectations",
    tag_list: 'Setting',
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title: "Employee Performance Management 1:Identifying Employee Development Needs",
    tag_list: 'Setting',
    category_id: cat_id("Setting")
  },
)
