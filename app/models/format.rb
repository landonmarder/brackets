class Format < ActiveRecord::Base
  has_many :brackets

  validates_presence_of :title
  validates_inclusion_of :contestant_amount, in: [2, 4, 8, 16]
end
