require 'rails_helper'

RSpec.describe Bracket, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:format_id) }
  it { should have_many(:rounds) }
  it { should belong_to(:format) }
end
