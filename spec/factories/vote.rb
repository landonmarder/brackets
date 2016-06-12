FactoryGirl.define do
  factory :vote, class: "Vote" do
    contest_contestant
  end
end
