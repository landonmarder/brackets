class Contestant < ActiveRecord::Base
  has_many :contest_contestants

  validates_presence_of :title
end
