class Vote < ActiveRecord::Base
  belongs_to :contest_contestant, dependent: :destroy, counter_cache: true

  validates_presence_of :contest_contestant_id
  validates_uniqueness_of :ip_address, allow_nil: true
end
