FactoryGirl.define do
  factory :format, class: "Format" do
    sequence(:title) { |n| "#{n} Format" }
    contestant_amount 4
  end
end
