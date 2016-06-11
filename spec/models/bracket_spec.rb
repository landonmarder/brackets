require 'rails_helper'

RSpec.describe Bracket, type: :model do
  it { should validate_presence_of(:title) }
  it { should have_many(:rounds) }
end
