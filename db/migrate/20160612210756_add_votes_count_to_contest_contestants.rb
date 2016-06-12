class AddVotesCountToContestContestants < ActiveRecord::Migration
  def up
    add_column :contest_contestants, :votes_count, :integer, default: 0
  end

  def down
    remove_column :contest_contestants, :votes_count
  end
end
