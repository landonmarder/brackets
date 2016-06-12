class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :ip_address
      t.integer :contest_contestant_id, null: false

      t.timestamps null: false
    end
  end
end
