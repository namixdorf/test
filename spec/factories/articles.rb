FactoryGirl.define do
  factory :article do
    title "The best title ever"
    body Faker::Lorem.paragraph(3)
    headline Faker::Lorem.paragraph(1)
    image File.open Rails.root.join 'spec/factories/assets/kitten_placeholder.jpg'
  end
end
