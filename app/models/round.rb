class Round < ActiveRecord::Base
  belongs_to :bracket

  validates_presence_of :bracket_id
end
