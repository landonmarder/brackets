require 'rails_helper'

RSpec.describe Format, type: :model do
  it { should have_many(:brackets) }
  it { should validate_presence_of(:title) }
  it { should validate_inclusion_of(:contestant_amount).in_array([2, 4, 8, 16]) }
end
