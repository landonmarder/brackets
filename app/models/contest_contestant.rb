class ContestContestant < ActiveRecord::Base
  has_many :votes
  belongs_to :contest, dependent: :destroy
  belongs_to :contestant, dependent: :destroy

  validates_presence_of :contest_id
  validates_presence_of :contestant_id
end
