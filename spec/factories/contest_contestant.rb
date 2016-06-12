FactoryGirl.define do
  factory :contest_contestant, class: "ContestContestant" do
    contest
    contestant
  end
end
