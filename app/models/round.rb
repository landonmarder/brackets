class Round < ActiveRecord::Base
  belongs_to :bracket

  validates_presence_of :bracket_id

  def expired?
    expires_at ? expires_at < Time.now : false
  end
end
