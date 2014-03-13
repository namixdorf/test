FactoryGirl.define do
  factory :category_article do
    image File.open Rails.root.join 'spec/factories/assets/kitten_placeholder.jpg'
    title "best title ever"
    intro Faker::Lorem.paragraph
    publication Faker::Company.name
  end
end

