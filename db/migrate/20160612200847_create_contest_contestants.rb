class CreateContestContestants < ActiveRecord::Migration
  def change
    create_table :contest_contestants do |t|
      t.integer :contest_id, null: false
      t.integer :contestant_id, null: false

      t.timestamps null: false
    end
  end
end
