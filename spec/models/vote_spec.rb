require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe "validations" do
    subject { Vote.new(contest_contestant_id: 1) }
    it { should validate_presence_of(:contest_contestant_id) }
    it { should validate_uniqueness_of(:ip_address).allow_nil }
    it { should belong_to(:contest_contestant).counter_cache(true).dependent(:destroy) }
  end
end
