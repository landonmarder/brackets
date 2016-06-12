require 'rails_helper'

RSpec.describe Contestant, type: :model do
  it { should validate_presence_of(:title) }
  it { should have_many(:contest_contestants) }
  it { should have_many(:contests).through(:contest_contestants) }
end
