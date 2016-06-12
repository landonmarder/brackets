class Contestant < ActiveRecord::Base
  has_many :contest_contestants
  has_many :contests, through: :contest_contestants

  validates_presence_of :title
end
