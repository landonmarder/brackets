class Contest < ActiveRecord::Base
  belongs_to :round, dependent: :destroy

  validates_presence_of :round_id
end
