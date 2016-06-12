class Bracket < ActiveRecord::Base
  has_many :rounds
  belongs_to :format

  validates_presence_of :title
  validates_presence_of :format_id

  after_create :setup_rounds

  private

  def setup_rounds
    format.number_of_rounds.times { rounds.create! }
  end
end
