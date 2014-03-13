@index = 0
def id
  @index += 1
end

Category.seed(:id,
  { id: id, short_name: "Growing", full_name: "Grow Our Skills to Inspire Others", tab_name: "growing_tab" },
  { id: id, short_name: "Fueling", full_name: "Fuel Our Associates' Careers", tab_name: "fueling_tab" },
  { id: id, short_name: "Setting", full_name: "Set Clear, High Measureable Expectations", tab_name: "setting_tab" },
  { id: id, short_name: "Coaching", full_name: "Coach Our Teams to the Finish Line", tab_name: "coaching_tab" },
  { id: id, short_name: "Balance", full_name: "Balance Leading and Doing", tab_name: "balance_tab" },
  { id: id, short_name: "Creating", full_name: "Create a Great Place to Work", tab_name: "creating_tab"},
  # { id: id, short_name: "Finding", full_name: "Discover More Resources"},

)
