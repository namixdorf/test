@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def cat_id(short_name)
  Category.find_by_short_name(short_name).id
end

Tool.seed(:id,
  {
    id: id,
    title:      "Epsilon's Leadership Assessment",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E1-Leadership-Competency-Self-Assessment.doc",
    tag_list:   'Growing',
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Blank Individual Development Plan",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E1-Individual-Development-Plan.doc",
    tag_list:   "Growing",
    category_id: cat_id("Growing")
  },
  {
    id: id,
    title:      "Sample Individual Development Plan",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E1-Individual-Development-Plan-SAMPLE.docx",
    tag_list:   "Growing",
    category_id: cat_id("Growing")
  },
  
  
  
  
  
  
  
  
  
  
  {
    id: id,
    title:      "60 Great Coaching Questions",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E4-60-Big-Coaching-Questions.pdf",
    tag_list:   "Coaching",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "FIRST: A Coaching Model",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E4-FIRST-Coaching-Model-and-Planning-Questions.doc",
    tag_list:   "Coaching",
    category_id: cat_id("Coaching")
  },
  {
    id: id,
    title:      "Do's and Don'ts of Employee Coaching",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E4-Dos-and-Donts-of-Employee-Coaching.pdf",
    tag_list:   "Coaching",
    category_id: cat_id("Coaching")
  },
  
  
  
  
  
  
  
  
  
  {
    id: id,
    title:      "Checklist to Improve Your Goals",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-SMART-Checklist-to-Improve-your-Goals.doc",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Setting Expectations Worksheet",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-Setting-Expectations-Worksheet.doc",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Tips for Dealing with Difficult Behavior",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-Tips-for-Dealing-with-Difficult-Behaviors.pdf",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "10 Levels of Delegation",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-10-Levels-of-Delegation.pdf",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  {
    id: id,
    title:      "Facilitating Internal Transitions",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-Facilitating-Internal-Transitions.doc",
    tag_list:   "Setting",
    category_id: cat_id("Setting")
  },
  
  
  
  
  
  
  
  
  
  
  
  {
    id: id,
    title:      "New Employee Questionnaire",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E6-New-Employee-Questionnaire.doc",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Stay Interview Worksheet",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E6-Stay-Interview.doc ",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Manager's Backpack for On-boarding New Associates",
    url:        "https://inview.alldata.net/careerlearning/epsilonnewhireportal/Pages/Manager%27s%20Backpack.aspx",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "You Made It Happen Recognition Tool",
    url:        "https://recognition.octanner.com/nomination/alliancedata/default.jsp",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  },
  {
    id: id,
    title:      "Epsilon Excellence Award",
    url:        "https://inview.alliancedata.com/Culture/EpsilonExcellence/Pages/default.aspx",
    tag_list:   "Creating",
    category_id: cat_id("Creating")
  },
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  {
    id: id,
    title:      "Career Conversations Toolbox",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E2-Career%20Conversation%20Toolbox.pdf",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Career Conversation Checklist",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E2-Career-Conversation-Checklist.pdf",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Blank Individual Development Plan",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E2-Individual-Development-Plan.doc",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Sample Individual Development Plan",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E2-Individual-Development-Plan-SAMPLE.docx",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Associate Potential Assessment: Discover Your High Potentials",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E2-Potential-Assessment-Questionnaire.doc",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  {
    id: id,
    title:      "Internal Transfer Policy",
    url:        "https://inview.alliancedata.com/ToolsAndResources/Pages/Internal-Application-Process-EP.aspx",
    tag_list:   "Fueling",
    category_id: cat_id("Fueling")
  },
  
  
  
  
  
  
  
  
  
  {
    id: id,
    title:      "Delegation Toolkit: Assessment, Checklist & Template",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E5-A-DELEGATION-TOOLKIT.doc",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "The Steps of Delegation",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E5-Steps-of-Successful-Delegation.pdf",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "10 Levels of Delegation",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E3-10-Levels-of-Delegation.pdf",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Time Matrix Grid",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E5-The-Time-Matrix.pdf",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "On the Job Training: 10 Telling Teaching Tips for Top Results",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E5-On-Job-Training-10-Teaching-Tips.pdf",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  },
  {
    id: id,
    title:      "Tips for Managing Remotely",
    url:        "https://inview.alliancedata.com/Career/EpsilonUniversity/Documents/E5-Checklist-for-Managing-Remote-Employees.doc",
    tag_list:   "Balance",
    category_id: cat_id("Balance")
  }
)