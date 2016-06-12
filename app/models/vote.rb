class Vote < ActiveRecord::Base
  belongs_to :contest_contestant, dependent: :destroy, counter_cache: true

  validates_presence_of :contest_contestant_id
end
