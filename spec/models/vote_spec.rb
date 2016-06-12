require 'rails_helper'

RSpec.describe Vote, type: :model do
  it { should validate_presence_of(:contest_contestant_id) }
  it { should belong_to(:contest_contestant).counter_cache(true).dependent(:destroy) }
end
