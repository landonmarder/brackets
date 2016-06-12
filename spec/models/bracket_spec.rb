require 'rails_helper'

RSpec.describe Bracket, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:format_id) }
  it { should have_many(:rounds) }
  it { should have_many(:contests).through(:rounds) }
  it { should belong_to(:format) }

  context "after create" do
    context "creating rounds" do
      let(:bracket) { FactoryGirl.create(:bracket) }
      let(:format) { bracket.format }

      before do
        bracket.save
      end

      it "should create appropriate number of rounds" do
        expect(bracket.rounds.count).to eq(2)
      end
    end
  end
end
