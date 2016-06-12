FactoryGirl.define do
  factory :bracket, class: "Bracket" do
    sequence(:title) { |n| "#{n} Bracket" }
    description "The best bracket ever"
    format
  end
end
