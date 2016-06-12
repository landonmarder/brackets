class Contest < ActiveRecord::Base
  belongs_to :round

  validates_presence_of :round_id
end
