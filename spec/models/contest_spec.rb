require 'rails_helper'

RSpec.describe Contest, type: :model do
  it { should validate_presence_of(:round_id) }
  it { should belong_to(:round).dependent(:destroy) }
  it { should have_many(:contest_contestants) }
  it { should have_many(:contestants).through(:contest_contestants) }

  describe ".contestant_in_lead" do
    let(:contest) { FactoryGirl.create(:contest_with_contestants) }
    let(:first_contest_contestant) { contest.contest_contestants.first }
    let(:second_contest_contestant) { contest.contest_contestants.last }

    context "contestants are tied" do
      it "should return the first contestant" do
        expect(contest.contestant_in_lead).to eq(first_contest_contestant.contestant)
      end
    end

    context "contestants and not tied" do
      let!(:first_vote) { FactoryGirl.create(:vote, contest_contestant: first_contest_contestant) }
      let!(:second_vote) { FactoryGirl.create(:vote, contest_contestant: second_contest_contestant) }
      let!(:third_vote) { FactoryGirl.create(:vote, contest_contestant: second_contest_contestant) }

      it "should return the contestant with the most votes" do
        expect(contest.contestant_in_lead).to eq(second_contest_contestant.contestant)
      end
    end
  end

  describe ".winner" do
    let(:contest) { FactoryGirl.create(:contest_with_contestants) }
    let(:round) { contest.round }
    let(:first_contest_contestant) { contest.contest_contestants.first }
    let(:second_contest_contestant) { contest.contest_contestants.last }
    let!(:first_vote) { FactoryGirl.create(:vote, contest_contestant: first_contest_contestant) }
    let!(:second_vote) { FactoryGirl.create(:vote, contest_contestant: second_contest_contestant) }
    let!(:third_vote) { FactoryGirl.create(:vote, contest_contestant: second_contest_contestant) }

    context "contest has expired" do
      before do
        round.expires_at = 1.year.ago
      end

      it "should return the contestant in the lead" do
        expect(contest.winner).to eq(second_contest_contestant.contestant)
      end
    end

    context "contest has not expired" do
      before do
        round.expires_at = 1.year.from_now
      end

      it "should return nil" do
        expect(contest.winner).to be_nil
      end
    end
  end
end
