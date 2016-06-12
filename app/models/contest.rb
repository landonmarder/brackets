class Contest < ActiveRecord::Base
  has_many :contest_contestants
  belongs_to :round, dependent: :destroy

  validates_presence_of :round_id
end
