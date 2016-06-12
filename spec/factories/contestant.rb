FactoryGirl.define do
  factory :contestant, class: "Contestant" do
    sequence(:title) { |n| "#{n} Contestant" }
  end
end
