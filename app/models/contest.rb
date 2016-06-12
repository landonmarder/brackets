class Contest < ActiveRecord::Base
  has_many :contest_contestants
  has_many :contestants, through: :contest_contestants
  belongs_to :round, dependent: :destroy

  validates_presence_of :round_id

  def contestant_in_lead
    contest_contestants.includes(:contestant).max_by(&:votes_count).contestant
  end
end
