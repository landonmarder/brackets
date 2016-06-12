require 'rails_helper'

RSpec.describe ContestContestant, type: :model do
  it { should validate_presence_of(:contest_id) }
  it { should validate_presence_of(:contestant_id) }
  it { should belong_to(:contest).dependent(:destroy) }
  it { should belong_to(:contestant).dependent(:destroy) }
  it { should have_many(:votes) }
end
