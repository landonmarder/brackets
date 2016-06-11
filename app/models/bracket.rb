class Bracket < ActiveRecord::Base
  has_many :rounds
  belongs_to :format

  validates_presence_of :title
  validates_presence_of :format_id
end
