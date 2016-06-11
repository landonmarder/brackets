class Bracket < ActiveRecord::Base
  has_many :rounds

  validates_presence_of :title
end
