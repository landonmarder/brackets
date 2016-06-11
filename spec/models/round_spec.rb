require 'rails_helper'

RSpec.describe Round, type: :model do
  it { should belong_to(:bracket) }
  it { should validate_presence_of(:bracket_id) }
end
