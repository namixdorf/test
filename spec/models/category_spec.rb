# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  full_name  :text
#  short_name :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Category do
  it "is has a valid factory" do
    create(:category).should be_valid
  end

  it "is invalid without a short_name" do
    build(:category, short_name: nil).should_not be_valid
  end

  it "is invalid with a blank short_name" do
    build(:category, short_name: "").should_not be_valid
  end

  it "is invalid without a full_name" do
    build(:category, full_name: nil).should_not be_valid
  end

  it "is invalid with a blank full_name" do
    build(:category, full_name: "").should_not be_valid
  end
  
end
