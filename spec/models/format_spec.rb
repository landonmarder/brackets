require 'rails_helper'

RSpec.describe Format, type: :model do
  it { should have_many(:brackets) }
  it { should validate_presence_of(:title) }
  it { should validate_inclusion_of(:contestant_amount).in_array([2, 4, 8, 16]) }

  describe ".number_of_rounds" do
    context "2 contestants" do
      let(:format) { FactoryGirl.build_stubbed(:format, contestant_amount: 2) }

      it "should have 1 round" do
        expect(format.number_of_rounds).to eq(1)
      end
    end

    context "4 contestants" do
      let(:format) { FactoryGirl.build_stubbed(:format, contestant_amount: 4) }

      it "should have 2 rounds" do
        expect(format.number_of_rounds).to eq(2)
      end
    end

    context "8 contestants" do
      let(:format) { FactoryGirl.build_stubbed(:format, contestant_amount: 8) }

      it "should have 3 rounds" do
        expect(format.number_of_rounds).to eq(3)
      end
    end

    context "16 contestants" do
      let(:format) { FactoryGirl.build_stubbed(:format, contestant_amount: 16) }

      it "should have 4 rounds" do
        expect(format.number_of_rounds).to eq(4)
      end
    end
  end
end
