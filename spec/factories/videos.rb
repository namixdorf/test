FactoryGirl.define do
  factory :video do
    information "this is the basic information about the video, It really isn't used for anything right now just random notes"
    source File.open Rails.root.join 'spec/factories/assets/18_wheeler.mp4'
    image File.open Rails.root.join 'spec/factories/assets/kitten_placeholder.jpg'
  end
end
