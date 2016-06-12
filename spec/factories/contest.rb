FactoryGirl.define do
  factory :contest, class: "Contest" do
    round
  end

  factory :contest_with_contestants, parent: :contest do
    after(:create) do |contest|
      FactoryGirl.create(:contest_contestant, contest: contest)
      FactoryGirl.create(:contest_contestant, contest: contest)
    end
  end
end
