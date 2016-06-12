require 'rails_helper'

RSpec.describe Round, type: :model do
  describe "validations" do
    it { should belong_to(:bracket).dependent(:destroy) }
    it { should validate_presence_of(:bracket_id) }
    it { should have_many(:contests) }
  end

  describe ".expired?" do
    context "round does not have an expired_at" do
      let(:round) { FactoryGirl.build_stubbed(:round, expires_at: nil) }

      it "should be false" do
        expect(round.expired?).to be_falsey
      end
    end

    context "round has an expired_at in the past" do
      let(:round) { FactoryGirl.build_stubbed(:round, expires_at: 1.year.ago) }

      it "should be true" do
        expect(round.expired?).to be true
      end
    end

    context "round has an expired_at in the future" do
      let(:round) { FactoryGirl.build_stubbed(:round, expires_at: 1.year.from_now) }

      it "should be false" do
        expect(round.expired?).to be_falsey
      end
    end
  end
end
