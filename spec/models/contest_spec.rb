require 'rails_helper'

RSpec.describe Contest, type: :model do
  it { should validate_presence_of(:round_id) }
  it { should belong_to(:round).dependent(:destroy) }
  it { should have_many(:contest_contestants) }
end
